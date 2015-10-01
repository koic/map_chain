describe Array do
  let(:symbols) { %i(foo bar) }

  describe '#map_chain' do
    context '1 chain' do
      subject { symbols.map_chain('to_s') }

      it { is_expected.to eq %w(foo bar) }
    end

    context '2 chains' do
      subject { symbols.map_chain('to_s.to_sym') }

      it { is_expected.to eq %i(foo bar) }
    end

    context 'with blank' do
      subject { symbols.map_chain(' to_s . to_sym ') }

      it { is_expected.to eq %i(foo bar) }
    end
  end
end
