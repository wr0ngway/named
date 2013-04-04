require 'spec_helper'

describe Named::Naming do
  let(:subject) { Class.new.extend(described_class) }

  it "adds a name getter" do
    expect(subject).to respond_to :name
  end

  it "adds a name setter" do
    expect(subject).to respond_to :name=
  end

  it "properly formats object ids" do
    expect(subject.inspect).to include subject.inspect_object_id
  end
end