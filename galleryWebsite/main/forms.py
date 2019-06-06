from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User


class UserForm(forms.ModelForm):
	# Blueprint of our user registration fomr
	email = forms.EmailField(required=True)
	password=forms.CharField(widget=forms.PasswordInput);

	class Meta:
		model = User
		fields = ["username", "email", "password"]

	# def save(self, commit=True):
	# 	user = super(NewUserForm, self).save(commit=False)
	# 	user.email = self.cleaned_data['email']
	# 	if commit:
	# 		user.save()
	# 	return user
