
describe 'Caixa de seleção', :dropdown do


    it 'Item especifico simples' do

        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        select('Loki' , from: 'dropdown') # essa forma so funciona para id's :/
        sleep 3
    end

    it 'item especifico com o find', :drop_select do 
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        drop = find('.avenger-list') #drop é a variável
        drop.find('option', text:'Scott Lang').select_option
        sleep 3
    end

    it 'qualquer item', :sample do 
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        drop = find('.avenger-list') #drop é a variável
        drop.all('option').sample.select_option #o "sample" vai sortear o e o "all" pega todos os elementos do array 
        sleep 3
    end
end