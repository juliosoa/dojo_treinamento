Dado(/^que acessei o site http:\/\/opensource\.demo\.orangehrmlive\.com$/) do
  visit 'http://opensource.demo.orangehrmlive.com'
end

Quando(/^preencher todos os dados$/) do
  fill_in('txtUsername', :with => 'admin')
  fill_in('txtPassword', :with => 'admin')
  click_button('btnLogin')

  click_link('menu_pim_viewPimModule', :match => :first)
  click_link('menu_pim_addEmployee', :match => :first)

  fill_in('firstName', :with => 'Julio')
  fill_in('middleName', :with => 'Cesar')
  fill_in('lastName', :with => 'Soares')
  

  #find(:xpath,'//*[@value="1"]').click
  check('chkLogin')
    
  fill_in('user_name', :with => 'juliasoa')
  fill_in('user_password', :with => '104821')
  fill_in('re_password', :with => '104821')
  select('Enabled', :from => 'status')
  #binding.pry
end

Entao(/^o cadastro sera efetuado$/) do
  click_button('btnSave')
end