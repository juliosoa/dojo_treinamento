Quando(/^efetuar a edicao das informacoes do cadastro de um empregado existente$/) do
  fill_in('txtUsername', :with => 'admin')
  fill_in('txtPassword', :with => 'admin')
  click_button('btnLogin')

  click_link('menu_pim_viewPimModule', :match => :first) 
  click_link('menu_pim_viewEmployeeList', :match => :first)
  
  fill_in('empsearch_employee_name_empName', :with => 'Julio Cesar Soares')	
  click_button('searchBtn')

  #click_link('/index.php/pim/viewEmployee/empNumber/13')
  click_link('Julio Cesar')

  click_button('btnSave')
  fill_in('personal_txtOtherID', :with => '1274')
  fill_in('personal_txtLicenNo', :with => '1232856641')
  fill_in('personal_txtLicExpDate', :with => '2018-11-13')
  choose('personal_optGender_1')
  select('Married', :from => 'personal_cmbMarital')
  select('Brazilian', :from => 'personal_cmbNation')
  fill_in('personal_DOB', :with => '1981-05-30')
end

Quando(/^clicar em salvar$/) do
  click_button('btnSave')
end

Entao(/^a edicao do cadastro do empregado sera efetuada com sucesso$/) do
  assert_text('Successfully Saved')
end


