; Samsung A12 (SM-A125F) // MT6765 // Android 12 (A125FXXU2CWC1)

; struct AvbVBMetaImage:
;   0x00  magic[4]                          "AVB0"
;   0x04  required_libavb_version_major     1
;   0x08  required_libavb_version_minor     0
;   0x0c  authentication_data_block_size    576
;   0x1c  algorithm_type                    2 = SHA256_RSA4096
;   0x74  rollback_index                    u64
;   0x78  flags                             u32   // 0x2 (flag to disable)
;   0x80  release_string[48]                'avbtool 1.2.0'
;   ...

.org 0x78
; vbmeta / vbmeta_samsung:
; Original:
;   flags = 0x00000000
;   0x00 = no flags
; Fix:
;   flags = 0x00000002       // flags = VERIFICATION_DISABLED
