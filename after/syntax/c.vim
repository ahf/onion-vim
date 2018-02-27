" Vim plugin
" Language:     Tor plug-in for Vim.
" Author:       Alexander Færøy <ahf@torproject.org>
" Copyright:    Copyright (c) 2018 Alexander Færøy
" License:      BSD-2-Clause

if &compatible || v:version < 603
    finish
endif

if ! exists('b:onion_file') || exists('b:onion_c_did_syntax')
    finish
endif

let b:onion_c_did_syntax = 1

if exists('g:onion_disable_doxygen') && ! g:onion_disable_doxygen
    " Enable Doxygen for tor C files.
    runtime! syntax/doxygen.vim
endif

" Tor specific types.
" Generated using:
" make -s ctags CTAGS_ARGS="--c-kinds=gstu -x" | awk '{ print $1 }' | xargs -s 72 echo syn keyword OnionType
syn keyword OnionType CERT_PKEY_local GetAdaptersAddresses_fn_t
syn keyword OnionType GetTickCount64_fn_t SB_IMPL SESS_CERT_local
syn keyword OnionType add_onion_secret_key_t
syn keyword OnionType add_onion_secret_key_t addr_policy_action_t
syn keyword OnionType addr_policy_result_t addr_policy_t
syn keyword OnionType addr_policy_t address_set_t address_set_t
syn keyword OnionType address_ttl_s address_ttl_t
syn keyword OnionType addressmap_entry_source_t addressmap_entry_t
syn keyword OnionType aes_cnt_cipher_t alert_sockets_s
syn keyword OnionType alert_sockets_t atomic_counter_t
syn keyword OnionType atomic_counter_t atomic_counter_t
syn keyword OnionType atomic_counter_t auth1_st auth1_t
syn keyword OnionType auth_challenge_cell_st auth_challenge_cell_t
syn keyword OnionType auth_ctx_st auth_ctx_t authchallenge_data_s
syn keyword OnionType authchallenge_data_t authdir_config_t
syn keyword OnionType authdir_config_t authenticate_data_s
syn keyword OnionType authenticate_data_t authority_cert_t
syn keyword OnionType authority_cert_t bandwidth_weight_rule_t
syn keyword OnionType bandwidth_weight_rule_t batch_heap
syn keyword OnionType batch_heap_t begin_cell_t begin_cell_t
syn keyword OnionType bench_fn benchmark_t benchmark_t
syn keyword OnionType bidi_map_entry_t bidi_map_entry_t
syn keyword OnionType bignum25519 bignum25519 bignum25519
syn keyword OnionType bignum25519align16 bignum256modm
syn keyword OnionType bignum256modm bignum256modm_element_t
syn keyword OnionType bignum256modm_element_t bitarray_t
syn keyword OnionType bootstrap_status_t bridge_info_t
syn keyword OnionType bridge_info_t bridge_line_t bridge_line_t
syn keyword OnionType broken_state_count_t broken_state_count_t
syn keyword OnionType buf_pos_t buf_pos_t buf_t buf_t build_time_t
syn keyword OnionType buildtimeout_set_event_t
syn keyword OnionType buildtimeout_set_event_t bw_array_t
syn keyword OnionType bw_array_t bw_weights_error_t c_hist_t
syn keyword OnionType c_hist_t cached_bw_event_s cached_dir_t
syn keyword OnionType cached_dir_t cached_getaddrinfo_item_t
syn keyword OnionType cached_getaddrinfo_item_t cached_resolve_t
syn keyword OnionType cached_resolve_t cc_client_stats_t
syn keyword OnionType cc_client_stats_t cdline_t cdline_t
syn keyword OnionType cdm_diff_status_t cdm_diff_status_t
syn keyword OnionType cdm_diff_t cdm_diff_t cell_direction_t
syn keyword OnionType cell_ewma_s cell_ewma_t cell_queue_t
syn keyword OnionType cell_queue_t cell_stats_t cell_stats_t
syn keyword OnionType cell_t cell_t cert_encoding_t
syn keyword OnionType cert_encoding_t cert_list_t cert_list_t
syn keyword OnionType cert_pkey_st_local certs_cell_cert_st
syn keyword OnionType certs_cell_cert_t certs_cell_st certs_cell_t
syn keyword OnionType certs_data_s certs_data_t
syn keyword OnionType chan_circid_circuit_map_t
syn keyword OnionType chan_circid_circuit_map_t
syn keyword OnionType chanid_circid_muxinfo_map_t
syn keyword OnionType chanid_circid_muxinfo_t
syn keyword OnionType chanid_circid_muxinfo_t
syn keyword OnionType channel_cell_handler_fn_ptr
syn keyword OnionType channel_idmap_entry_s channel_idmap_entry_t
syn keyword OnionType channel_listener_fn_ptr channel_listener_s
syn keyword OnionType channel_listener_state_t channel_listener_t
syn keyword OnionType channel_s channel_state_t channel_t
syn keyword OnionType channel_tls_s channel_tls_t
syn keyword OnionType channel_usage_info_t
syn keyword OnionType channel_var_cell_handler_fn_ptr
syn keyword OnionType channelpadding_decision_t
syn keyword OnionType channelpadding_negotiate_st
syn keyword OnionType channelpadding_negotiate_t chunk_t chunk_t
syn keyword OnionType circ_buffer_stats_t circ_buffer_stats_t
syn keyword OnionType circ_id_type_t circid_t
syn keyword OnionType circuit_build_times_s circuit_build_times_t
syn keyword OnionType circuit_guard_state_t circuit_guard_state_t
syn keyword OnionType circuit_muxinfo_s circuit_muxinfo_t
syn keyword OnionType circuit_status_event_t
syn keyword OnionType circuit_status_event_t
syn keyword OnionType circuit_status_minor_event_t
syn keyword OnionType circuit_status_minor_event_t circuit_t
syn keyword OnionType circuit_t circuitmux_policy_circ_data_s
syn keyword OnionType circuitmux_policy_circ_data_t
syn keyword OnionType circuitmux_policy_data_s
syn keyword OnionType circuitmux_policy_data_t circuitmux_policy_s
syn keyword OnionType circuitmux_policy_t circuitmux_s
syn keyword OnionType circuitmux_t clientmap_entry_t
syn keyword OnionType clientmap_entry_t common_digests_t
syn keyword OnionType compress_method_t compressed_result_t
syn keyword OnionType compressed_result_t compression_level_t
syn keyword OnionType config_abbrev_t config_abbrev_t
syn keyword OnionType config_deprecation_t config_deprecation_t
syn keyword OnionType config_format_t config_format_t
syn keyword OnionType config_line_t config_line_t config_type_t
syn keyword OnionType config_type_t config_var_t config_var_t
syn keyword OnionType confparse_dummy_values_t connection_t
syn keyword OnionType connection_t consdiff_cfg_t consdiff_cfg_t
syn keyword OnionType consdiff_status_t consdiff_status_t
syn keyword OnionType consensus_cache_entry_t
syn keyword OnionType consensus_cache_entry_t consensus_cache_t
syn keyword OnionType consensus_cache_t
syn keyword OnionType consensus_compress_worker_job_t
syn keyword OnionType consensus_compress_worker_job_t
syn keyword OnionType consensus_diff_worker_job_t
syn keyword OnionType consensus_diff_worker_job_t
syn keyword OnionType consensus_digest_t consensus_digest_t
syn keyword OnionType consensus_flavor_t consensus_method_range_t
syn keyword OnionType consensus_path_type_t
syn keyword OnionType consensus_waiting_for_certs_t
syn keyword OnionType consensus_waiting_for_certs_t
syn keyword OnionType control_connection_t control_connection_t
syn keyword OnionType control_event_t country_t
syn keyword OnionType cpath_build_state_t cpd_check_t
syn keyword OnionType cpuworker_job_t cpuworker_job_u
syn keyword OnionType cpuworker_reply_t cpuworker_reply_t
syn keyword OnionType cpuworker_request_t cpuworker_request_t
syn keyword OnionType create2_cell_body_st create2_cell_body_t
syn keyword OnionType create_cell_t create_cell_t created_cell_t
syn keyword OnionType created_cell_t crypt_path_reference_t
syn keyword OnionType crypt_path_t crypt_path_t crypto_cipher_t
syn keyword OnionType crypto_dh_t crypto_dh_t
syn keyword OnionType crypto_digest_checkpoint_t
syn keyword OnionType crypto_digest_checkpoint_t crypto_digest_t
syn keyword OnionType crypto_digest_t crypto_pk_t crypto_pk_t
syn keyword OnionType crypto_xof_t crypto_xof_t
syn keyword OnionType curve25519_keypair_t curve25519_keypair_t
syn keyword OnionType curve25519_public_key_t
syn keyword OnionType curve25519_public_key_t
syn keyword OnionType curve25519_secret_key_t
syn keyword OnionType curve25519_secret_key_t curved25519_key
syn keyword OnionType curved25519_key cv_testinfo_s cv_testinfo_t
syn keyword OnionType ddmap_entry_s ddmap_entry_t demo_t demo_t
syn keyword OnionType desc_store_t desc_store_t
syn keyword OnionType destroy_cell_queue_t destroy_cell_queue_t
syn keyword OnionType destroy_cell_t destroy_cell_t
syn keyword OnionType di_digest256_map_t di_digest256_map_t
syn keyword OnionType digest_algorithm_t digestset_t dimap_free_fn
syn keyword OnionType dir_connection_t dir_connection_t
syn keyword OnionType dir_indirection_t dir_server_t dir_server_t
syn keyword OnionType dir_spool_source_t dir_spool_source_t
syn keyword OnionType dir_src_ent_t dir_src_ent_t dircollator_s
syn keyword OnionType dircollator_t directory_keyword
syn keyword OnionType directory_request_t directory_request_t
syn keyword OnionType directory_root_t directory_token_t
syn keyword OnionType directory_token_t dirinfo_type_t
syn keyword OnionType dirreq_map_entry_t dirreq_map_entry_t
syn keyword OnionType dirreq_state_t dirreq_type_t
syn keyword OnionType document_signature_t document_signature_t
syn keyword OnionType dos_cc_defense_type_t dos_cc_defense_type_t
syn keyword OnionType dos_client_stats_t dos_client_stats_t
syn keyword OnionType dos_conn_defense_type_t
syn keyword OnionType dos_conn_defense_type_t double_digest_map_t
syn keyword OnionType download_schedule_backoff_t
syn keyword OnionType download_schedule_increment_t
syn keyword OnionType download_schedule_t download_status_t
syn keyword OnionType download_status_t download_want_authority_t
syn keyword OnionType dumped_desc_t duration_idx_t ecdh_work_s
syn keyword OnionType ecdh_work_t ed25519_cert_extension_st
syn keyword OnionType ed25519_cert_extension_t ed25519_cert_st
syn keyword OnionType ed25519_cert_t ed25519_checkable_t
syn keyword OnionType ed25519_hash_context ed25519_hash_context
syn keyword OnionType ed25519_hash_context ed25519_hash_context
syn keyword OnionType ed25519_impl_t ed25519_keypair_t
syn keyword OnionType ed25519_public_key ed25519_public_key
syn keyword OnionType ed25519_public_key_t ed25519_secret_key
syn keyword OnionType ed25519_secret_key ed25519_secret_key_t
syn keyword OnionType ed25519_signature ed25519_signature
syn keyword OnionType ed25519_signature_t edge_connection_t
syn keyword OnionType edge_connection_t entry_connection_t
syn keyword OnionType entry_connection_t entry_guard_restriction_t
syn keyword OnionType entry_guard_restriction_t entry_guard_t
syn keyword OnionType entry_guard_t entry_port_cfg_t
syn keyword OnionType entry_port_cfg_t event_mask_t
syn keyword OnionType ewma_policy_circ_data_s
syn keyword OnionType ewma_policy_circ_data_t ewma_policy_data_s
syn keyword OnionType ewma_policy_data_t exit_policy_parser_cfg_t
syn keyword OnionType ext_or_cmd_t ext_or_cmd_t
syn keyword OnionType extend1_cell_body_st extend1_cell_body_t
syn keyword OnionType extend2_cell_body_st extend2_cell_body_t
syn keyword OnionType extend_cell_t extend_cell_t extend_info_t
syn keyword OnionType extend_info_t extended_cell_t
syn keyword OnionType extended_cell_t extrainfo_t extrainfo_t
syn keyword OnionType fake_work_queue_ent_t fake_work_queue_ent_t
syn keyword OnionType fast_handshake_state_t
syn keyword OnionType fast_handshake_state_t fe felem
syn keyword OnionType file_status_t firewall_connection_t
syn keyword OnionType firewall_connection_t flush_mock_channel_t
syn keyword OnionType foobar_subscriber_data_t fp_pair_map_entry_s
syn keyword OnionType fp_pair_map_entry_t fp_pair_map_iter_t
syn keyword OnionType fp_pair_map_s fp_pair_map_t fp_pair_t
syn keyword OnionType ge25519 ge25519_niels ge25519_niels_t
syn keyword OnionType ge25519_p1p1 ge25519_p1p1_t ge25519_pniels
syn keyword OnionType ge25519_pniels_t ge25519_t ge_cached ge_p1p1
syn keyword OnionType ge_p2 ge_p3 ge_precomp geoip_client_action_t
syn keyword OnionType geoip_country_t geoip_country_t
syn keyword OnionType geoip_ipv4_entry_t geoip_ipv4_entry_t
syn keyword OnionType geoip_ipv6_entry_t geoip_ipv6_entry_t
syn keyword OnionType geoip_ns_response_t get_handler_args_t
syn keyword OnionType get_handler_args_t getinfo_helper_t
syn keyword OnionType getinfo_item_t getinfo_item_t
syn keyword OnionType guard_pathbias_t guard_pathbias_t
syn keyword OnionType guard_restriction_type_t
syn keyword OnionType guard_restriction_type_t guard_selection_s
syn keyword OnionType guard_selection_t guard_selection_type_t
syn keyword OnionType guard_selection_type_t guard_usable_t
syn keyword OnionType guard_usage_t guardfraction_bandwidth_t
syn keyword OnionType guardfraction_bandwidth_t hash_512bits
syn keyword OnionType heap_index_t hibernate_state_t
syn keyword OnionType hostname_type_t hostname_type_t
syn keyword OnionType hs_auth_key_type_t
syn keyword OnionType hs_cache_client_descriptor_t
syn keyword OnionType hs_cache_client_descriptor_t
syn keyword OnionType hs_cache_client_intro_state_t
syn keyword OnionType hs_cache_client_intro_state_t
syn keyword OnionType hs_cache_dir_descriptor_t
syn keyword OnionType hs_cache_dir_descriptor_t
syn keyword OnionType hs_cache_intro_state_t
syn keyword OnionType hs_cache_intro_state_t
syn keyword OnionType hs_cell_introd_ack_status_t
syn keyword OnionType hs_cell_introduce1_data_t
syn keyword OnionType hs_cell_introduce1_data_t
syn keyword OnionType hs_cell_introduce2_data_t
syn keyword OnionType hs_cell_introduce2_data_t
syn keyword OnionType hs_cell_onion_key_type_t hs_circuitmap_ht
syn keyword OnionType hs_client_fetch_status_t hs_desc_auth_type_t
syn keyword OnionType hs_desc_encrypted_data_t
syn keyword OnionType hs_desc_encrypted_data_t
syn keyword OnionType hs_desc_intro_point_t hs_desc_intro_point_t
syn keyword OnionType hs_desc_link_specifier_t
syn keyword OnionType hs_desc_link_specifier_t
syn keyword OnionType hs_desc_plaintext_data_t
syn keyword OnionType hs_desc_plaintext_data_t hs_descriptor_t
syn keyword OnionType hs_descriptor_t hs_ident_circuit_t
syn keyword OnionType hs_ident_circuit_t hs_ident_circuit_type_t
syn keyword OnionType hs_ident_dir_conn_t hs_ident_dir_conn_t
syn keyword OnionType hs_ident_edge_conn_t hs_ident_edge_conn_t
syn keyword OnionType hs_intro_ack_status_t
syn keyword OnionType hs_intro_auth_key_type_t hs_intropoint_t
syn keyword OnionType hs_intropoint_t hs_ntor_intro_cell_keys_t
syn keyword OnionType hs_ntor_rend_cell_keys_t
syn keyword OnionType hs_service_add_ephemeral_status_t
syn keyword OnionType hs_service_config_t hs_service_config_t
syn keyword OnionType hs_service_descriptor_t
syn keyword OnionType hs_service_descriptor_t hs_service_ht
syn keyword OnionType hs_service_intro_point_t
syn keyword OnionType hs_service_intro_point_t
syn keyword OnionType hs_service_intropoints_t
syn keyword OnionType hs_service_intropoints_t hs_service_keys_t
syn keyword OnionType hs_service_keys_t hs_service_state_t
syn keyword OnionType hs_service_state_t hs_service_t hs_service_t
syn keyword OnionType hs_stats_t hs_stats_t hs_token_s hs_token_t
syn keyword OnionType hs_token_type_t hsdir_index_t hsdir_index_t
syn keyword OnionType isaacp_state isaacp_state_t keccak_state
syn keyword OnionType keccak_state keypin_ent_st keypin_ent_t limb
syn keyword OnionType link_specifier_list_st link_specifier_list_t
syn keyword OnionType link_specifier_st link_specifier_t
syn keyword OnionType link_specifier_t listener_connection_t
syn keyword OnionType listener_connection_t log_callback
syn keyword OnionType log_domain_mask_t log_severity_list_t
syn keyword OnionType log_severity_list_t logfile_t logfile_t
syn keyword OnionType logmsg_t managed_proxy_t maskbits_t
syn keyword OnionType mbw_cache_entry_s mbw_cache_entry_t
syn keyword OnionType measured_bw_line_t measured_bw_line_t
syn keyword OnionType memarea_chunk_t memarea_chunk_t memarea_t
syn keyword OnionType memarea_t memarea_t microdesc_cache_t
syn keyword OnionType microdesc_cache_t microdesc_t microdesc_t
syn keyword OnionType microdesc_vote_line_t microdesc_vote_line_t
syn keyword OnionType mock_saved_log_entry_t
syn keyword OnionType mock_saved_log_entry_t monotime_coarse_t
syn keyword OnionType monotime_coarse_t monotime_t monotime_t
syn keyword OnionType network_liveness_t networkstatus_sr_info_t
syn keyword OnionType networkstatus_sr_info_t networkstatus_t
syn keyword OnionType networkstatus_t networkstatus_type_t
syn keyword OnionType networkstatus_voter_info_t
syn keyword OnionType networkstatus_voter_info_t node_t node_t
syn keyword OnionType nodelist_t nodelist_t
syn keyword OnionType ns_detached_signatures_t
syn keyword OnionType ns_detached_signatures_t
syn keyword OnionType ntor_handshake_state_t
syn keyword OnionType ntor_handshake_state_t obj_syntax
syn keyword OnionType onion_handshake_state_t onion_queue_t
syn keyword OnionType onion_queue_t open_file_t open_file_t
syn keyword OnionType options_test_data_t or_circuit_t
syn keyword OnionType or_circuit_t or_conn_status_event_t
syn keyword OnionType or_conn_status_event_t or_connection_t
syn keyword OnionType or_connection_t or_handshake_certs_t
syn keyword OnionType or_handshake_certs_t or_handshake_state_t
syn keyword OnionType or_handshake_state_t or_history_t
syn keyword OnionType or_history_t or_options_t or_state_t
syn keyword OnionType origin_circuit_t origin_circuit_t
syn keyword OnionType outbound_addr_t outbuf_table_ent_s
syn keyword OnionType outbuf_table_ent_t outbuf_table_t outcome
syn keyword OnionType packed32bignum25519 packed64bignum25519
syn keyword OnionType packed_cell_t packed_cell_t packedelem32
syn keyword OnionType packedelem32_t packedelem64 packedelem64_t
syn keyword OnionType packedelem8 packedelem8_t padding_counts_t
syn keyword OnionType padding_counts_t padding_type_t
syn keyword OnionType padding_type_t parsed_consensus_request_t
syn keyword OnionType parsed_process_specifier_t path_state_t
syn keyword OnionType pending_connection_t pending_connection_t
syn keyword OnionType pending_consensus_t pending_consensus_t
syn keyword OnionType pending_log_message_t pending_log_message_t
syn keyword OnionType pending_vote_t pending_vote_t
syn keyword OnionType periodic_event_helper_t
syn keyword OnionType periodic_event_item_t periodic_event_item_t
syn keyword OnionType periodic_timer_t periodic_timer_t pid_t
syn keyword OnionType pk_op_t policy_map_ent_t policy_map_ent_t
syn keyword OnionType policy_summary_item_t policy_summary_item_t
syn keyword OnionType port_cfg_t port_cfg_t pq_entry_t pq_entry_t
syn keyword OnionType predicted_port_t predicted_port_t
syn keyword OnionType process_environment_t process_environment_t
syn keyword OnionType process_handle_t process_handle_t
syn keyword OnionType proto_entry_t proto_entry_t proto_range_t
syn keyword OnionType proto_range_t protocol_type_t
syn keyword OnionType protocol_type_t protover_summary_flags_t
syn keyword OnionType protover_summary_flags_t pt_proto_state
syn keyword OnionType pubsub_notify_fn_t pubsub_subscriber_fn_t
syn keyword OnionType pubsub_subscriber_t pubsub_subscriber_t
syn keyword OnionType pubsub_topic_t pubsub_topic_t
syn keyword OnionType pwbox_encoded_st pwbox_encoded_t
syn keyword OnionType queued_event_s queued_event_t ratelim_t
syn keyword OnionType ratelim_t reachability_cfg_t
syn keyword OnionType reachability_cfg_t relay_header_t
syn keyword OnionType rend_auth_type_t rend_auth_type_t
syn keyword OnionType rend_authorized_client_t
syn keyword OnionType rend_authorized_client_t rend_cache_entry_t
syn keyword OnionType rend_cache_entry_t
syn keyword OnionType rend_cache_failure_intro_t
syn keyword OnionType rend_cache_failure_intro_t
syn keyword OnionType rend_cache_failure_t rend_cache_failure_t
syn keyword OnionType rend_cache_type_t rend_data_t rend_data_t
syn keyword OnionType rend_data_v2_t rend_data_v2_t
syn keyword OnionType rend_encoded_v2_service_descriptor_t
syn keyword OnionType rend_encoded_v2_service_descriptor_t
syn keyword OnionType rend_intro_cell_s rend_intro_cell_t
syn keyword OnionType rend_intro_point_failure_t
syn keyword OnionType rend_intro_point_failure_t
syn keyword OnionType rend_intro_point_t rend_intro_point_t
syn keyword OnionType rend_service_authorization_t
syn keyword OnionType rend_service_authorization_t
syn keyword OnionType rend_service_descriptor_t
syn keyword OnionType rend_service_descriptor_t
syn keyword OnionType rend_service_port_config_t
syn keyword OnionType rend_service_port_config_t rend_service_t
syn keyword OnionType rend_service_t replaycache_s replaycache_t
syn keyword OnionType replyqueue_s replyqueue_t
syn keyword OnionType response_handler_args_t
syn keyword OnionType response_handler_args_t rewrite_result_t
syn keyword OnionType rlim_t router_crn_flags_t
syn keyword OnionType router_id_iterator_t router_id_iterator_t
syn keyword OnionType router_status_t routerinfo_t routerlist_t
syn keyword OnionType routerset_t routerset_t
syn keyword OnionType routerstatus_format_type_t routerstatus_t
syn keyword OnionType routerstatus_t rsa_ed_crosscert_st
syn keyword OnionType rsa_ed_crosscert_t rsa_work_s rsa_work_t
syn keyword OnionType sa_family_t sandbox_cfg_elem sandbox_cfg_t
syn keyword OnionType sandbox_filter_func_t sandbox_t
syn keyword OnionType saved_location_t scheduler_s scheduler_t
syn keyword OnionType scheduler_types_t server_onion_keys_t
syn keyword OnionType server_onion_keys_t server_port_cfg_t
syn keyword OnionType server_port_cfg_t sess_cert_st_local
syn keyword OnionType setopt_err_t setopt_err_t sha512_state
syn keyword OnionType sha512_state_t short_policy_entry_t
syn keyword OnionType short_policy_entry_t short_policy_t
syn keyword OnionType short_policy_t shrinking_dir_entry_t
syn keyword OnionType shrinking_dir_entry_t signal_t
syn keyword OnionType signed_descriptor_t signed_descriptor_t
syn keyword OnionType sipkey sized_chunk_t sized_chunk_t
syn keyword OnionType smartlist_slice_t smartlist_slice_t
syn keyword OnionType smartlist_t smartlist_t smp_param
syn keyword OnionType smp_param_t sockaddr_in6 socket_table_ent_s
syn keyword OnionType socket_table_ent_t socket_table_t socklen_t
syn keyword OnionType socks5_reply_status_t socks_request_t
syn keyword OnionType socks_request_t socks_test_data_t
syn keyword OnionType socks_test_data_t split_lines_test_t
syn keyword OnionType spooled_resource_flush_status_t
syn keyword OnionType spooled_resource_t spooled_resource_t
syn keyword OnionType sr_commit_t sr_commit_t sr_disk_state_t
syn keyword OnionType sr_disk_state_t sr_phase_t sr_srv_t sr_srv_t
syn keyword OnionType sr_state_action_t sr_state_object_t
syn keyword OnionType sr_state_t sr_state_t ssize_t ssize_t
syn keyword OnionType state_s state_t storage_dir_t storage_dir_t
syn keyword OnionType store_type_t store_type_t stream_status
syn keyword OnionType stream_status_event_t stream_status_event_t
syn keyword OnionType streamid_t takes_argument_t testcase
syn keyword OnionType testcase_fn testcase_setup_t testcase_t
syn keyword OnionType testgroup_t testing_cell_stats_entry_t
syn keyword OnionType testing_cell_stats_entry_t testlist_alias_t
syn keyword OnionType threadpool_s threadpool_t time_unit_t
syn keyword OnionType timeout timeout_cb timeout_cb timeout_t
syn keyword OnionType timeouts timeouts_it timer_cb_fn_t timeval
syn keyword OnionType token_rule_t token_rule_t
syn keyword OnionType tor_addr_comparison_t tor_addr_port_t
syn keyword OnionType tor_addr_port_t tor_addr_t tor_addr_t
syn keyword OnionType tor_cert_st tor_cert_t tor_compress_output_t
syn keyword OnionType tor_compress_state_t tor_compress_state_t
syn keyword OnionType tor_cond_t tor_cond_t tor_libevent_cfg
syn keyword OnionType tor_libevent_cfg tor_lockfile_t
syn keyword OnionType tor_lockfile_t tor_lzma_compress_state_t
syn keyword OnionType tor_lzma_compress_state_t
syn keyword OnionType tor_main_configuration_t
syn keyword OnionType tor_main_configuration_t tor_mmap_t
syn keyword OnionType tor_mmap_t tor_mutex_t tor_mutex_t
syn keyword OnionType tor_process_monitor_t tor_process_monitor_t
syn keyword OnionType tor_procmon_callback_t tor_pthread_data_t
syn keyword OnionType tor_pthread_data_t tor_threadlocal_s
syn keyword OnionType tor_threadlocal_t tor_timer_t
syn keyword OnionType tor_tls_context_t tor_tls_context_t
syn keyword OnionType tor_tls_state_t tor_tls_t tor_tls_t
syn keyword OnionType tor_version_t tor_version_t tor_weak_rng_t
syn keyword OnionType tor_weak_rng_t tor_x509_cert_t
syn keyword OnionType tor_x509_cert_t tor_zlib_compress_state_t
syn keyword OnionType tor_zlib_compress_state_t
syn keyword OnionType tor_zstd_compress_state_t
syn keyword OnionType tor_zstd_compress_state_t transport_t
syn keyword OnionType transport_t trn_cell_establish_intro_st
syn keyword OnionType trn_cell_establish_intro_t
syn keyword OnionType trn_cell_extension_fields_st
syn keyword OnionType trn_cell_extension_fields_t
syn keyword OnionType trn_cell_extension_st trn_cell_extension_t
syn keyword OnionType trn_cell_extension_t trn_cell_extension_t
syn keyword OnionType trn_cell_intro_established_st
syn keyword OnionType trn_cell_intro_established_t
syn keyword OnionType trn_cell_introduce1_st trn_cell_introduce1_t
syn keyword OnionType trn_cell_introduce_ack_st
syn keyword OnionType trn_cell_introduce_ack_t
syn keyword OnionType trn_cell_introduce_encrypted_st
syn keyword OnionType trn_cell_introduce_encrypted_t
syn keyword OnionType trn_cell_rendezvous1_st
syn keyword OnionType trn_cell_rendezvous1_t
syn keyword OnionType trn_cell_rendezvous2_st
syn keyword OnionType trn_cell_rendezvous2_t trunnel_free_fn_t
syn keyword OnionType trunnel_string_t tweakset_t tweakset_t u8
syn keyword OnionType uint128_t uint128_t uint128_t uint128_t
syn keyword OnionType uint128_t uint128_t uint128_t uint128_t
syn keyword OnionType unit_table_t upgrade_circuits_data_t
syn keyword OnionType url_table_ent_s url_table_ent_t
syn keyword OnionType usable_descriptor_t validate_fn_t var_cell_t
syn keyword OnionType var_cell_t version_status_t version_status_t
syn keyword OnionType virtaddress_entry_t virtual_addr_conf_t
syn keyword OnionType virtual_addr_conf_t vote_microdesc_hash_t
syn keyword OnionType vote_microdesc_hash_t vote_routerstatus_t
syn keyword OnionType vote_routerstatus_t vote_timing_t
syn keyword OnionType vote_timing_t voting_schedule_t
syn keyword OnionType waitpid_callback_t waitpid_callback_t
syn keyword OnionType was_router_added_t was_router_added_t
syn keyword OnionType watchable_events watchable_events_t wheel_t
syn keyword OnionType wheel_t wheel_t wheel_t work_tailq_t
syn keyword OnionType worker_state_s worker_state_t workerthread_s
syn keyword OnionType workerthread_t workqueue_entry_s
syn keyword OnionType workqueue_entry_t workqueue_priority_t
syn keyword OnionType workqueue_priority_t workqueue_reply_t
syn keyword OnionType workqueue_reply_t xmmi

if exists('g:onion_disable_type_highlight') && ! g:onion_disable_type_highlight
    hi def link OnionType Type
endif
