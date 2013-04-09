require 'spec_helper'

describe "Statics" do
  subject { page }

  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: :heading) }
    # it { should have_title(:title) }
  end

  describe "home page" do
    before(:each) { visit root_path }
    let(:heading) { 'going on' }
  end

  describe "about page" do
    before(:each) { visit root_path }
    let(:heading) { 'our thing' }
  end

  describe "layout should have correct links" do
    before { visit root_path }
    # preliminary - links won't have much functionality yet, so no clicking
    it { should have_link('Venues', href: venues_path) }
    it { should have_link('Events') }
    it { should have_link('About', href: '/about') }
  end
end
