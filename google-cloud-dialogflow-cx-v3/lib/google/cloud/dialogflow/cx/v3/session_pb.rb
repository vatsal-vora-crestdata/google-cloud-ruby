# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dialogflow/cx/v3/session.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/dialogflow/cx/v3/advanced_settings_pb'
require 'google/cloud/dialogflow/cx/v3/audio_config_pb'
require 'google/cloud/dialogflow/cx/v3/intent_pb'
require 'google/cloud/dialogflow/cx/v3/page_pb'
require 'google/cloud/dialogflow/cx/v3/response_message_pb'
require 'google/cloud/dialogflow/cx/v3/session_entity_type_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/struct_pb'
require 'google/rpc/status_pb'
require 'google/type/latlng_pb'


descriptor_data = "\n+google/cloud/dialogflow/cx/v3/session.proto\x12\x1dgoogle.cloud.dialogflow.cx.v3\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x35google/cloud/dialogflow/cx/v3/advanced_settings.proto\x1a\x30google/cloud/dialogflow/cx/v3/audio_config.proto\x1a*google/cloud/dialogflow/cx/v3/intent.proto\x1a(google/cloud/dialogflow/cx/v3/page.proto\x1a\x34google/cloud/dialogflow/cx/v3/response_message.proto\x1a\x37google/cloud/dialogflow/cx/v3/session_entity_type.proto\x1a\x1egoogle/protobuf/duration.proto\x1a google/protobuf/field_mask.proto\x1a\x1cgoogle/protobuf/struct.proto\x1a\x17google/rpc/status.proto\x1a\x18google/type/latlng.proto\"\xd4\x02\n\x0e\x41nswerFeedback\x12I\n\x06rating\x18\x01 \x01(\x0e\x32\x34.google.cloud.dialogflow.cx.v3.AnswerFeedback.RatingB\x03\xe0\x41\x01\x12V\n\rrating_reason\x18\x02 \x01(\x0b\x32:.google.cloud.dialogflow.cx.v3.AnswerFeedback.RatingReasonB\x03\xe0\x41\x01\x12\x1a\n\rcustom_rating\x18\x03 \x01(\tB\x03\xe0\x41\x01\x1a\x41\n\x0cRatingReason\x12\x1a\n\rreason_labels\x18\x03 \x03(\tB\x03\xe0\x41\x01\x12\x15\n\x08\x66\x65\x65\x64\x62\x61\x63k\x18\x02 \x01(\tB\x03\xe0\x41\x01\"@\n\x06Rating\x12\x16\n\x12RATING_UNSPECIFIED\x10\x00\x12\r\n\tTHUMBS_UP\x10\x01\x12\x0f\n\x0bTHUMBS_DOWN\x10\x02\"\xf6\x01\n\x1bSubmitAnswerFeedbackRequest\x12:\n\x07session\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!dialogflow.googleapis.com/Session\x12\x18\n\x0bresponse_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12K\n\x0f\x61nswer_feedback\x18\x03 \x01(\x0b\x32-.google.cloud.dialogflow.cx.v3.AnswerFeedbackB\x03\xe0\x41\x02\x12\x34\n\x0bupdate_mask\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x01\"\xab\x02\n\x13\x44\x65tectIntentRequest\x12:\n\x07session\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!dialogflow.googleapis.com/Session\x12\x44\n\x0cquery_params\x18\x02 \x01(\x0b\x32..google.cloud.dialogflow.cx.v3.QueryParameters\x12\x43\n\x0bquery_input\x18\x03 \x01(\x0b\x32).google.cloud.dialogflow.cx.v3.QueryInputB\x03\xe0\x41\x02\x12M\n\x13output_audio_config\x18\x04 \x01(\x0b\x32\x30.google.cloud.dialogflow.cx.v3.OutputAudioConfig\"\x8e\x03\n\x14\x44\x65tectIntentResponse\x12\x13\n\x0bresponse_id\x18\x01 \x01(\t\x12@\n\x0cquery_result\x18\x02 \x01(\x0b\x32*.google.cloud.dialogflow.cx.v3.QueryResult\x12\x14\n\x0coutput_audio\x18\x04 \x01(\x0c\x12M\n\x13output_audio_config\x18\x05 \x01(\x0b\x32\x30.google.cloud.dialogflow.cx.v3.OutputAudioConfig\x12W\n\rresponse_type\x18\x06 \x01(\x0e\x32@.google.cloud.dialogflow.cx.v3.DetectIntentResponse.ResponseType\x12\x1a\n\x12\x61llow_cancellation\x18\x07 \x01(\x08\"E\n\x0cResponseType\x12\x1d\n\x19RESPONSE_TYPE_UNSPECIFIED\x10\x00\x12\x0b\n\x07PARTIAL\x10\x01\x12\t\n\x05\x46INAL\x10\x02\"\xf1\x02\n\x1cStreamingDetectIntentRequest\x12\x37\n\x07session\x18\x01 \x01(\tB&\xfa\x41#\n!dialogflow.googleapis.com/Session\x12\x44\n\x0cquery_params\x18\x02 \x01(\x0b\x32..google.cloud.dialogflow.cx.v3.QueryParameters\x12\x43\n\x0bquery_input\x18\x03 \x01(\x0b\x32).google.cloud.dialogflow.cx.v3.QueryInputB\x03\xe0\x41\x02\x12M\n\x13output_audio_config\x18\x04 \x01(\x0b\x32\x30.google.cloud.dialogflow.cx.v3.OutputAudioConfig\x12\x1f\n\x17\x65nable_partial_response\x18\x05 \x01(\x08\x12\x1d\n\x15\x65nable_debugging_info\x18\x08 \x01(\x08\"\xb0\x07\n\x1e\x43loudConversationDebuggingInfo\x12\x19\n\x11\x61udio_data_chunks\x18\x01 \x01(\x05\x12\x39\n\x16result_end_time_offset\x18\x02 \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x37\n\x14\x66irst_audio_duration\x18\x03 \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x18\n\x10single_utterance\x18\x05 \x01(\x08\x12\x43\n speech_partial_results_end_times\x18\x06 \x03(\x0b\x32\x19.google.protobuf.Duration\x12\x41\n\x1espeech_final_results_end_times\x18\x07 \x03(\x0b\x32\x19.google.protobuf.Duration\x12\x19\n\x11partial_responses\x18\x08 \x01(\x05\x12,\n$speaker_id_passive_latency_ms_offset\x18\t \x01(\x05\x12\x1f\n\x17\x62\x61rgein_event_triggered\x18\n \x01(\x08\x12\x1f\n\x17speech_single_utterance\x18\x0b \x01(\x08\x12=\n\x1a\x64tmf_partial_results_times\x18\x0c \x03(\x0b\x32\x19.google.protobuf.Duration\x12;\n\x18\x64tmf_final_results_times\x18\r \x03(\x0b\x32\x19.google.protobuf.Duration\x12\x43\n single_utterance_end_time_offset\x18\x0e \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x34\n\x11no_speech_timeout\x18\x0f \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x36\n\x13\x65ndpointing_timeout\x18\x13 \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x15\n\ris_input_text\x18\x10 \x01(\x08\x12@\n\x1d\x63lient_half_close_time_offset\x18\x11 \x01(\x0b\x32\x19.google.protobuf.Duration\x12J\n\'client_half_close_streaming_time_offset\x18\x12 \x01(\x0b\x32\x19.google.protobuf.Duration\"\xb2\x02\n\x1dStreamingDetectIntentResponse\x12W\n\x12recognition_result\x18\x01 \x01(\x0b\x32\x39.google.cloud.dialogflow.cx.v3.StreamingRecognitionResultH\x00\x12U\n\x16\x64\x65tect_intent_response\x18\x02 \x01(\x0b\x32\x33.google.cloud.dialogflow.cx.v3.DetectIntentResponseH\x00\x12U\n\x0e\x64\x65\x62ugging_info\x18\x04 \x01(\x0b\x32=.google.cloud.dialogflow.cx.v3.CloudConversationDebuggingInfoB\n\n\x08response\"\xb6\x03\n\x1aStreamingRecognitionResult\x12[\n\x0cmessage_type\x18\x01 \x01(\x0e\x32\x45.google.cloud.dialogflow.cx.v3.StreamingRecognitionResult.MessageType\x12\x12\n\ntranscript\x18\x02 \x01(\t\x12\x10\n\x08is_final\x18\x03 \x01(\x08\x12\x12\n\nconfidence\x18\x04 \x01(\x02\x12\x11\n\tstability\x18\x06 \x01(\x02\x12G\n\x10speech_word_info\x18\x07 \x03(\x0b\x32-.google.cloud.dialogflow.cx.v3.SpeechWordInfo\x12\x34\n\x11speech_end_offset\x18\x08 \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x15\n\rlanguage_code\x18\n \x01(\t\"X\n\x0bMessageType\x12\x1c\n\x18MESSAGE_TYPE_UNSPECIFIED\x10\x00\x12\x0e\n\nTRANSCRIPT\x10\x01\x12\x1b\n\x17\x45ND_OF_SINGLE_UTTERANCE\x10\x02\"\x8b\x06\n\x0fQueryParameters\x12\x11\n\ttime_zone\x18\x01 \x01(\t\x12)\n\x0cgeo_location\x18\x02 \x01(\x0b\x32\x13.google.type.LatLng\x12N\n\x14session_entity_types\x18\x03 \x03(\x0b\x32\x30.google.cloud.dialogflow.cx.v3.SessionEntityType\x12(\n\x07payload\x18\x04 \x01(\x0b\x32\x17.google.protobuf.Struct\x12+\n\nparameters\x18\x05 \x01(\x0b\x32\x17.google.protobuf.Struct\x12\x39\n\x0c\x63urrent_page\x18\x06 \x01(\tB#\xfa\x41 \n\x1e\x64ialogflow.googleapis.com/Page\x12\x17\n\x0f\x64isable_webhook\x18\x07 \x01(\x08\x12$\n\x1c\x61nalyze_query_text_sentiment\x18\x08 \x01(\x08\x12[\n\x0fwebhook_headers\x18\n \x03(\x0b\x32\x42.google.cloud.dialogflow.cx.v3.QueryParameters.WebhookHeadersEntry\x12=\n\rflow_versions\x18\x0e \x03(\tB&\xfa\x41#\n!dialogflow.googleapis.com/Version\x12\x0f\n\x07\x63hannel\x18\x0f \x01(\t\x12\x33\n\x0bsession_ttl\x18\x10 \x01(\x0b\x32\x19.google.protobuf.DurationB\x03\xe0\x41\x01\x12\x37\n\x11\x65nd_user_metadata\x18\x12 \x01(\x0b\x32\x17.google.protobuf.StructB\x03\xe0\x41\x01\x12G\n\rsearch_config\x18\x14 \x01(\x0b\x32+.google.cloud.dialogflow.cx.v3.SearchConfigB\x03\xe0\x41\x01\x1a\x35\n\x13WebhookHeadersEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\x9a\x01\n\x0cSearchConfig\x12\x43\n\x0b\x62oost_specs\x18\x01 \x03(\x0b\x32).google.cloud.dialogflow.cx.v3.BoostSpecsB\x03\xe0\x41\x01\x12\x45\n\x0c\x66ilter_specs\x18\x02 \x03(\x0b\x32*.google.cloud.dialogflow.cx.v3.FilterSpecsB\x03\xe0\x41\x01\"\xae\x01\n\tBoostSpec\x12_\n\x15\x63ondition_boost_specs\x18\x01 \x03(\x0b\x32;.google.cloud.dialogflow.cx.v3.BoostSpec.ConditionBoostSpecB\x03\xe0\x41\x01\x1a@\n\x12\x43onditionBoostSpec\x12\x16\n\tcondition\x18\x01 \x01(\tB\x03\xe0\x41\x01\x12\x12\n\x05\x62oost\x18\x02 \x01(\x02\x42\x03\xe0\x41\x01\"\x90\x01\n\nBoostSpecs\x12\x45\n\x0b\x64\x61ta_stores\x18\x01 \x03(\tB0\xe0\x41\x01\xfa\x41*\n(discoveryengine.googleapis.com/DataStore\x12;\n\x04spec\x18\x02 \x03(\x0b\x32(.google.cloud.dialogflow.cx.v3.BoostSpecB\x03\xe0\x41\x01\"i\n\x0b\x46ilterSpecs\x12\x45\n\x0b\x64\x61ta_stores\x18\x01 \x03(\tB0\xe0\x41\x01\xfa\x41*\n(discoveryengine.googleapis.com/DataStore\x12\x13\n\x06\x66ilter\x18\x02 \x01(\tB\x03\xe0\x41\x01\"\xdb\x02\n\nQueryInput\x12\x38\n\x04text\x18\x02 \x01(\x0b\x32(.google.cloud.dialogflow.cx.v3.TextInputH\x00\x12<\n\x06intent\x18\x03 \x01(\x0b\x32*.google.cloud.dialogflow.cx.v3.IntentInputH\x00\x12:\n\x05\x61udio\x18\x05 \x01(\x0b\x32).google.cloud.dialogflow.cx.v3.AudioInputH\x00\x12:\n\x05\x65vent\x18\x06 \x01(\x0b\x32).google.cloud.dialogflow.cx.v3.EventInputH\x00\x12\x38\n\x04\x64tmf\x18\x07 \x01(\x0b\x32(.google.cloud.dialogflow.cx.v3.DtmfInputH\x00\x12\x1a\n\rlanguage_code\x18\x04 \x01(\tB\x03\xe0\x41\x02\x42\x07\n\x05input\"\x8c\x07\n\x0bQueryResult\x12\x0e\n\x04text\x18\x01 \x01(\tH\x00\x12?\n\x0etrigger_intent\x18\x0b \x01(\tB%\xfa\x41\"\n dialogflow.googleapis.com/IntentH\x00\x12\x14\n\ntranscript\x18\x0c \x01(\tH\x00\x12\x17\n\rtrigger_event\x18\x0e \x01(\tH\x00\x12\x38\n\x04\x64tmf\x18\x17 \x01(\x0b\x32(.google.cloud.dialogflow.cx.v3.DtmfInputH\x00\x12\x15\n\rlanguage_code\x18\x02 \x01(\t\x12+\n\nparameters\x18\x03 \x01(\x0b\x32\x17.google.protobuf.Struct\x12I\n\x11response_messages\x18\x04 \x03(\x0b\x32..google.cloud.dialogflow.cx.v3.ResponseMessage\x12,\n\x10webhook_statuses\x18\r \x03(\x0b\x32\x12.google.rpc.Status\x12\x31\n\x10webhook_payloads\x18\x06 \x03(\x0b\x32\x17.google.protobuf.Struct\x12\x39\n\x0c\x63urrent_page\x18\x07 \x01(\x0b\x32#.google.cloud.dialogflow.cx.v3.Page\x12\x39\n\x06intent\x18\x08 \x01(\x0b\x32%.google.cloud.dialogflow.cx.v3.IntentB\x02\x18\x01\x12\'\n\x1bintent_detection_confidence\x18\t \x01(\x02\x42\x02\x18\x01\x12\x33\n\x05match\x18\x0f \x01(\x0b\x32$.google.cloud.dialogflow.cx.v3.Match\x12\x30\n\x0f\x64iagnostic_info\x18\n \x01(\x0b\x32\x17.google.protobuf.Struct\x12Y\n\x19sentiment_analysis_result\x18\x11 \x01(\x0b\x32\x36.google.cloud.dialogflow.cx.v3.SentimentAnalysisResult\x12J\n\x11\x61\x64vanced_settings\x18\x15 \x01(\x0b\x32/.google.cloud.dialogflow.cx.v3.AdvancedSettings\x12\x1d\n\x15\x61llow_answer_feedback\x18  \x01(\x08\x42\x07\n\x05query\"\x1e\n\tTextInput\x12\x11\n\x04text\x18\x01 \x01(\tB\x03\xe0\x41\x02\"G\n\x0bIntentInput\x12\x38\n\x06intent\x18\x01 \x01(\tB(\xe0\x41\x02\xfa\x41\"\n dialogflow.googleapis.com/Intent\"a\n\nAudioInput\x12\x44\n\x06\x63onfig\x18\x01 \x01(\x0b\x32/.google.cloud.dialogflow.cx.v3.InputAudioConfigB\x03\xe0\x41\x02\x12\r\n\x05\x61udio\x18\x02 \x01(\x0c\"\x1b\n\nEventInput\x12\r\n\x05\x65vent\x18\x01 \x01(\t\"1\n\tDtmfInput\x12\x0e\n\x06\x64igits\x18\x01 \x01(\t\x12\x14\n\x0c\x66inish_digit\x18\x02 \x01(\t\"\xf1\x02\n\x05Match\x12\x35\n\x06intent\x18\x01 \x01(\x0b\x32%.google.cloud.dialogflow.cx.v3.Intent\x12\r\n\x05\x65vent\x18\x06 \x01(\t\x12+\n\nparameters\x18\x02 \x01(\x0b\x32\x17.google.protobuf.Struct\x12\x16\n\x0eresolved_input\x18\x03 \x01(\t\x12\x42\n\nmatch_type\x18\x04 \x01(\x0e\x32..google.cloud.dialogflow.cx.v3.Match.MatchType\x12\x12\n\nconfidence\x18\x05 \x01(\x02\"\x84\x01\n\tMatchType\x12\x1a\n\x16MATCH_TYPE_UNSPECIFIED\x10\x00\x12\n\n\x06INTENT\x10\x01\x12\x11\n\rDIRECT_INTENT\x10\x02\x12\x15\n\x11PARAMETER_FILLING\x10\x03\x12\x0c\n\x08NO_MATCH\x10\x04\x12\x0c\n\x08NO_INPUT\x10\x05\x12\t\n\x05\x45VENT\x10\x06\"\xfe\x01\n\x12MatchIntentRequest\x12:\n\x07session\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!dialogflow.googleapis.com/Session\x12\x44\n\x0cquery_params\x18\x02 \x01(\x0b\x32..google.cloud.dialogflow.cx.v3.QueryParameters\x12\x43\n\x0bquery_input\x18\x03 \x01(\x0b\x32).google.cloud.dialogflow.cx.v3.QueryInputB\x03\xe0\x41\x02\x12!\n\x19persist_parameter_changes\x18\x05 \x01(\x08\"\x90\x02\n\x13MatchIntentResponse\x12\x0e\n\x04text\x18\x01 \x01(\tH\x00\x12?\n\x0etrigger_intent\x18\x02 \x01(\tB%\xfa\x41\"\n dialogflow.googleapis.com/IntentH\x00\x12\x14\n\ntranscript\x18\x03 \x01(\tH\x00\x12\x17\n\rtrigger_event\x18\x06 \x01(\tH\x00\x12\x35\n\x07matches\x18\x04 \x03(\x0b\x32$.google.cloud.dialogflow.cx.v3.Match\x12\x39\n\x0c\x63urrent_page\x18\x05 \x01(\x0b\x32#.google.cloud.dialogflow.cx.v3.PageB\x07\n\x05query\"\xeb\x01\n\x14\x46ulfillIntentRequest\x12O\n\x14match_intent_request\x18\x01 \x01(\x0b\x32\x31.google.cloud.dialogflow.cx.v3.MatchIntentRequest\x12\x33\n\x05match\x18\x02 \x01(\x0b\x32$.google.cloud.dialogflow.cx.v3.Match\x12M\n\x13output_audio_config\x18\x03 \x01(\x0b\x32\x30.google.cloud.dialogflow.cx.v3.OutputAudioConfig\"\xd3\x01\n\x15\x46ulfillIntentResponse\x12\x13\n\x0bresponse_id\x18\x01 \x01(\t\x12@\n\x0cquery_result\x18\x02 \x01(\x0b\x32*.google.cloud.dialogflow.cx.v3.QueryResult\x12\x14\n\x0coutput_audio\x18\x03 \x01(\x0c\x12M\n\x13output_audio_config\x18\x04 \x01(\x0b\x32\x30.google.cloud.dialogflow.cx.v3.OutputAudioConfig\";\n\x17SentimentAnalysisResult\x12\r\n\x05score\x18\x01 \x01(\x02\x12\x11\n\tmagnitude\x18\x02 \x01(\x02\x32\xa2\x0b\n\x08Sessions\x12\xa6\x02\n\x0c\x44\x65tectIntent\x12\x32.google.cloud.dialogflow.cx.v3.DetectIntentRequest\x1a\x33.google.cloud.dialogflow.cx.v3.DetectIntentResponse\"\xac\x01\x82\xd3\xe4\x93\x02\xa5\x01\"E/v3/{session=projects/*/locations/*/agents/*/sessions/*}:detectIntent:\x01*ZY\"T/v3/{session=projects/*/locations/*/agents/*/environments/*/sessions/*}:detectIntent:\x01*\x12\x98\x01\n\x15StreamingDetectIntent\x12;.google.cloud.dialogflow.cx.v3.StreamingDetectIntentRequest\x1a<.google.cloud.dialogflow.cx.v3.StreamingDetectIntentResponse\"\x00(\x01\x30\x01\x12\xa1\x02\n\x0bMatchIntent\x12\x31.google.cloud.dialogflow.cx.v3.MatchIntentRequest\x1a\x32.google.cloud.dialogflow.cx.v3.MatchIntentResponse\"\xaa\x01\x82\xd3\xe4\x93\x02\xa3\x01\"D/v3/{session=projects/*/locations/*/agents/*/sessions/*}:matchIntent:\x01*ZX\"S/v3/{session=projects/*/locations/*/agents/*/environments/*/sessions/*}:matchIntent:\x01*\x12\xd5\x02\n\rFulfillIntent\x12\x33.google.cloud.dialogflow.cx.v3.FulfillIntentRequest\x1a\x34.google.cloud.dialogflow.cx.v3.FulfillIntentResponse\"\xd8\x01\x82\xd3\xe4\x93\x02\xd1\x01\"[/v3/{match_intent_request.session=projects/*/locations/*/agents/*/sessions/*}:fulfillIntent:\x01*Zo\"j/v3/{match_intent_request.session=projects/*/locations/*/agents/*/environments/*/sessions/*}:fulfillIntent:\x01*\x12\xdb\x01\n\x14SubmitAnswerFeedback\x12:.google.cloud.dialogflow.cx.v3.SubmitAnswerFeedbackRequest\x1a-.google.cloud.dialogflow.cx.v3.AnswerFeedback\"X\x82\xd3\xe4\x93\x02R\"M/v3/{session=projects/*/locations/*/agents/*/sessions/*}:submitAnswerFeedback:\x01*\x1ax\xca\x41\x19\x64ialogflow.googleapis.com\xd2\x41Yhttps://www.googleapis.com/auth/cloud-platform,https://www.googleapis.com/auth/dialogflowB\xd3\x04\n!com.google.cloud.dialogflow.cx.v3B\x0cSessionProtoP\x01Z1cloud.google.com/go/dialogflow/cx/apiv3/cxpb;cxpb\xf8\x01\x01\xa2\x02\x02\x44\x46\xaa\x02\x1dGoogle.Cloud.Dialogflow.Cx.V3\xea\x02!Google::Cloud::Dialogflow::CX::V3\xea\x41\xd4\x01\n!dialogflow.googleapis.com/Session\x12Iprojects/{project}/locations/{location}/agents/{agent}/sessions/{session}\x12\x64projects/{project}/locations/{location}/agents/{agent}/environments/{environment}/sessions/{session}\xea\x41\xc5\x01\n(discoveryengine.googleapis.com/DataStore\x12?projects/{project}/locations/{location}/dataStores/{data_store}\x12Xprojects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
    ["google.cloud.dialogflow.cx.v3.OutputAudioConfig", "google/cloud/dialogflow/cx/v3/audio_config.proto"],
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
    ["google.type.LatLng", "google/type/latlng.proto"],
    ["google.cloud.dialogflow.cx.v3.SessionEntityType", "google/cloud/dialogflow/cx/v3/session_entity_type.proto"],
    ["google.protobuf.Struct", "google/protobuf/struct.proto"],
    ["google.cloud.dialogflow.cx.v3.ResponseMessage", "google/cloud/dialogflow/cx/v3/response_message.proto"],
    ["google.rpc.Status", "google/rpc/status.proto"],
    ["google.cloud.dialogflow.cx.v3.Page", "google/cloud/dialogflow/cx/v3/page.proto"],
    ["google.cloud.dialogflow.cx.v3.Intent", "google/cloud/dialogflow/cx/v3/intent.proto"],
    ["google.cloud.dialogflow.cx.v3.AdvancedSettings", "google/cloud/dialogflow/cx/v3/advanced_settings.proto"],
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Cloud
    module Dialogflow
      module CX
        module V3
          AnswerFeedback = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.AnswerFeedback").msgclass
          AnswerFeedback::RatingReason = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.AnswerFeedback.RatingReason").msgclass
          AnswerFeedback::Rating = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.AnswerFeedback.Rating").enummodule
          SubmitAnswerFeedbackRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.SubmitAnswerFeedbackRequest").msgclass
          DetectIntentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.DetectIntentRequest").msgclass
          DetectIntentResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.DetectIntentResponse").msgclass
          DetectIntentResponse::ResponseType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.DetectIntentResponse.ResponseType").enummodule
          StreamingDetectIntentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.StreamingDetectIntentRequest").msgclass
          CloudConversationDebuggingInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.CloudConversationDebuggingInfo").msgclass
          StreamingDetectIntentResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.StreamingDetectIntentResponse").msgclass
          StreamingRecognitionResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.StreamingRecognitionResult").msgclass
          StreamingRecognitionResult::MessageType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.StreamingRecognitionResult.MessageType").enummodule
          QueryParameters = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.QueryParameters").msgclass
          SearchConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.SearchConfig").msgclass
          BoostSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.BoostSpec").msgclass
          BoostSpec::ConditionBoostSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.BoostSpec.ConditionBoostSpec").msgclass
          BoostSpecs = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.BoostSpecs").msgclass
          FilterSpecs = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.FilterSpecs").msgclass
          QueryInput = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.QueryInput").msgclass
          QueryResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.QueryResult").msgclass
          TextInput = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.TextInput").msgclass
          IntentInput = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.IntentInput").msgclass
          AudioInput = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.AudioInput").msgclass
          EventInput = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.EventInput").msgclass
          DtmfInput = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.DtmfInput").msgclass
          Match = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.Match").msgclass
          Match::MatchType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.Match.MatchType").enummodule
          MatchIntentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.MatchIntentRequest").msgclass
          MatchIntentResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.MatchIntentResponse").msgclass
          FulfillIntentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.FulfillIntentRequest").msgclass
          FulfillIntentResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.FulfillIntentResponse").msgclass
          SentimentAnalysisResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.SentimentAnalysisResult").msgclass
        end
      end
    end
  end
end
