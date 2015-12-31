/**
 * 
 */
function validateForm()
{
   if(document.registrationForm.firstname.value=="")
    {
      alert("First Name is required");
      document.registrationForm.firstname.focus();
      return false;
    }
    else if(document.registrationForm.firstname.value.length>30)
    {
      alert("First Name exceeds the maximum length of 30");
      document.registrationForm.firstname.focus();
      return false;
    } 
    else if(document.registrationForm.firstname.value == /^[A-z]+$/)
    {
      alert("First Name cannot contain numbers");
      document.registrationForm.firstname.focus();
      return false;
    }
    
    else if(document.registrationForm.lastname.value=="")
    {
      alert("Last Name is required");
      document.registrationForm.lastname.focus();
      return false;
    }
    else if(document.registrationForm.lastname.value.length>30)
    {
      alert("Last Name exceeds the maximum length of 30");
      document.registrationForm.lastname.focus();
      return false;
    }
    else if(!isNaN(document.registrationForm.lastname.value))
    {
      alert("Last Name cannot contain numbers");
      document.registrationForm.lastname.focus();
      return false;
    }
    
    else if(document.registrationForm.address1.value=="")
    {
      alert("Address 1 is required");
      document.registrationForm.address1.focus();
      return false;
    }
    else if(document.registrationForm.address1.value.length>30)
    {
      alert("Address 1 exceeds the maximum length of 30");
      document.registrationForm.address1.focus();
      return false;
    }
    
    else if(document.registrationForm.address2.value.length>30)
    {
      alert("Address 2 exceeds the maximum length of 30");
      document.registrationForm.address2.focus();
      return false;
    }
    
    else if(document.registrationForm.city.value=="")
    {
      alert("City is required");
      document.registrationForm.city.focus();
      return false;
    }
    else if(document.registrationForm.city.value.length>30)
    {
      alert("City exceeds the maximum length of 30");
      document.registrationForm.firstname.focus();
      return false;
    }
    else if(!isNaN(document.registrationForm.city.value))
    {
      alert("City cannot contain numbers");
      document.registrationForm.city.focus();
      return false;
    }
    
    else if(document.registrationForm.state.value=="")
    {
      alert("State is required");
      document.registrationForm.state.focus();
      return false;
    }
    else if(document.registrationForm.state.value.length>2)
    {
      alert("State exceeds the maximum length of 2");
      document.registrationForm.firstname.focus();
      return false;
    }
    else if(!isNaN(document.registrationForm.state.value))
    {
      alert("State cannot contain numbers");
      document.registrationForm.state.focus();
      return false;
    }
    
    else if(document.registrationForm.zip.value=="")
    {
      alert("Zip is required");
      document.registrationForm.zip.focus();
      return false;
    }
    else if(document.registrationForm.zip.value.length!=5)
    {
      alert("Zip length must equal 5");
      document.registrationForm.firstname.focus();
      return false;
    }
    else if(isNaN(document.registrationForm.zip.value))
    {
      alert("Zip must contain numbers");
      document.registrationForm.firstname.focus();
      return false;
    }
    
    else if(document.registrationForm.country.value=="")
    {
      alert("Country is required");
      document.registrationForm.country.focus();
      return false;
    }
}