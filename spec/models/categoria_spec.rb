require 'spec_helper'

describe Categoria do
  it { should validate_presence_of(:nome) }
end
