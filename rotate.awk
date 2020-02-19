BEGIN{
	#xo=1774800.0;
	#yo=5475300.0;
	#alpha=-25.0;
	#in rad
	theta=-1.0*alpha*3.1415/180.0;
	}
{
	if(NR>0){
	if(NF>2)
	{
		printf("%2.2f\t%2.2f\t%2.2f\n",cos(theta)*($1-xo)-sin(theta)*($2-yo),sin(theta)*($1-xo)+cos(theta)*($2-yo),$3)
	}
	else
	{
		printf("%2.2f\t%2.2f\n",cos(theta)*($1-xo)-sin(theta)*($2-yo),sin(theta)*($1-xo)+cos(theta)*($2-yo))

	}



	}
}
