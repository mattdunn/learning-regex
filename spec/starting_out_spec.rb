describe :starting_out do
  describe "Given 'Elvis, the king, rocks'" do
    context 'when matching by literal text' do
      describe 'the king' do
        it 'should match' do
          'Elvis, the king, rocks'.should match 'the king'
        end
      end
    end
  end  
end