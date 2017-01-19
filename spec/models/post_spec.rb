require 'rails_helper'

describe Post do
	context "title and body present" do
		let(:post) { Post.new(title: "Sunny", body: "Hot") }

		it "should return title and body" do
      	expect(post.title).to eq "Sunny"
      	expect(post.body).to eq "Hot"
    end
  end
  	context "title missing" do
    let(:post) { Post.new(body: "Hot") }

    it "should return body only" do
      expect(post.body).to eq "Hot"
    end
  end

  context "body missing" do
    let(:post) { Post.new(title: "Sunny") }

    it "should return title name only" do
      expect(post.title).to eq "Sunny"
    end
  end

  context "no title and body present" do
    let(:post) { Post.new(title: "", body: "") }

    it "should return nothing" do
      expect(post.title).to eq ""
      expect(post.body).to eq ""
    end
  end
end