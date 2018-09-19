<?php
// GENERATED CODE -- DO NOT EDIT!

namespace Sample\Services;

/**
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
     * @param \Sample\Messages\User $argument input argument
     * @param array $metadata metadata
     * @param array $options call options
     */
    public function Get(\Sample\Messages\User $argument,
      $metadata = [], $options = []) {
        return $this->_simpleRequest('/sample.services.UserService/Get',
        $argument,
        ['\Sample\Messages\User', 'decode'],
        $metadata, $options);
    }

}
