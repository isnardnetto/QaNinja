describe 'Forms' do

    it 'login com sucesso' do 

        visit 'https://training-wheels-protocol.herokuapp.com/login'
        
        fill_in 'userId', with: 'stark' # o fill_in pode ser usado tanto para 'name' quanto para "id"
        fill_in 'password', with: 'jarvis!'

        click_button 'Login'

         expect(find('#flash').visible?).to be true #expected verifica se a area realmente existe 
         
         expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'

         expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'

    end

    it 'Login com senha incorreta' do 

        visit 'https://training-wheels-protocol.herokuapp.com/login'
        
        fill_in 'userId', with: 'stark' # o fill_in pode ser usado tanto para 'name' quanto para "id"
        fill_in 'password', with: 'errado'

        click_button 'Login'

         expect(find('#flash').visible?).to be true #expected verifica se a area realmente existe 
         
         expect(find('#flash').text).to include 'Senha é invalida!'

         expect(find('#flash')).to have_content 'Senha é invalida!'

    end

    it 'Usuário não cadastrado' do 

        visit 'https://training-wheels-protocol.herokuapp.com/login'
        
        fill_in 'userId', with: 'errado' # o fill_in pode ser usado tanto para 'name' quanto para "id"
        fill_in 'password', with: 'jarvis!'

        click_button 'Login'

         expect(find('#flash').visible?).to be true #expected verifica se a area realmente existe 
         
         expect(find('#flash').text).to include 'O usuário informado não está cadastrado!'

         expect(find('#flash')).to have_content 'O usuário informado não está cadastrado!'

    end

end