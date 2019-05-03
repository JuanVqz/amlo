require 'rails_helper'

RSpec.describe DescargarNoticiasWorker, type: :worker do
  subject { described_class }

  it "se debe ejecutar una vez" do
    expect {
      subject.perform_async
    }.to change(subject.jobs, :size).by(1)
  end
end
