require 'spec_helper'

describe Article do
  it "should query for text (google)" do
    text = Article.query_for_text 'http://google.com'
    params = JSON.parse text
    expect(params["url"]).to eq 'http://google.com'
    expect(params["domain"]).to eq 'google.com'
    expect(params["content"]).to match(/google/)
    expect(params["author"]).to be_nil
  end

  it "should find correct params (nyt article)" do
    url = 'http://www.nytimes.com/2013/05/11/us/politics/benghazi-e-mails-put-white-house-on-the-defensive.html?hp&_r=0'
    text = Article.query_for_text url
    params = JSON.parse text
    expect(params["domain"]).to eq 'www.nytimes.com'
    expect(params["content"]).to match(/A long-simmering dispute/)
    expect(params["author"]).to eq 'MARK LANDLER'
    expect(params["title"]).to eq'Benghazi E-Mails Put White House on the Defensive'
  end

  it "should fail gracefully with bad url" do
    url = 'not_a_good_one'
    expect(Article.query_for_text url).to be_nil
  end

  it "should not create empty articles" do
    a1 = build(:article, title: nil)
    (a1.save).should be_false
    a2 = build(:article, author: nil)
    (a2.save).should be_false
    a3 = build(:article, text: nil)
    (a3.save).should be_false
  end
end
