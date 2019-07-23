<?php
// GENERATED CODE -- DO NOT EDIT!

namespace Mythrnr\ProtobufCompilerExample\Services;

/**
 * user service
 */
class UserServiceClient extends \Grpc\BaseStub {

    /**
     * @param string $hostname hostname
     * @param array $opts channel options
     * @param \Grpc\Channel $channel (optional) re-use channel object
     */
    public function __construct($hostname, $opts, $channel = null) {
        parent::__construct($hostname, $opts, $channel);
    }

    /**
     * get user request
     * @param \Mythrnr\ProtobufCompilerExample\Messages\User $argument input argument
     * @param array $metadata metadata
     * @param array $options call options
     */
    public function Get(\Mythrnr\ProtobufCompilerExample\Messages\User $argument,
      $metadata = [], $options = []) {
        return $this->_simpleRequest('/mythrnr.protobuf_compiler_examples.services.UserService/Get',
        $argument,
        ['\Mythrnr\ProtobufCompilerExample\Messages\User', 'decode'],
        $metadata, $options);
    }

}
