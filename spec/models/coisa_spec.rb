require 'spec_helper'

describe Coisa do
  it { should validate_presence_of(:titulo) }
  it { should validate_presence_of(:descricao) } 
  it { should belong_to(:categoria)}
end
