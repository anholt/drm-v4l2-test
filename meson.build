project('dmabuf-sharing', 'c',
    default_options: ['buildtype=debugoptimized'],
    version: '1.0',
)

executable(
    'dmabuf-sharing',
    'dmabuf-sharing.c',

    dependencies: [
        dependency('libdrm'),
    ],
    install: true,
)
