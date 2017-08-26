require 'rspec'
require_relative '../app/passport.rb'

describe "First method"  do
  it 'Spec' do
    expect(Passport.sum(1, 2)).to eql(3)
    expect(Passport.sum(1, 2)).not_to eql(4)
  end
end
