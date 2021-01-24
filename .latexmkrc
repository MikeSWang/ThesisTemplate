ensure_path( 'TEXINPUTS', './config/pkgs//' );
ensure_path( 'BSTINPUTS', './config/pkgs//' );
ensure_path( 'BIBINPUTS', './contents/resources//' );

add_cus_dep( 'slo', 'sls', 0, 'makeglossaries' );
add_cus_dep( 'glo', 'gls', 0, 'makeglossaries' );
$clean_ext .= " glo-abr gls-abr glg-abr slo sls slg";
sub makeglossaries {
    my ($base_name, $path) = fileparse( $_[0] );
    pushd $path;
    my $return = system "makeglossaries", $base_name;
    popd;
    return $return;
}
