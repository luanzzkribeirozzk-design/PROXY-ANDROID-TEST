.class Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;
.super Ljava/lang/Object;


# instance fields
.field final DEPTH_INT_FG:I

.field final MAX_BL_LARGE:[I

.field final MAX_BL_SMALL:[I

.field private REV10:[S

.field final bitlength_avg:[I

.field final bitlength_std:[I

.field codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

.field fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

.field fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

.field final gauss_1024_12289:[J

.field primes:Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;

.field vrfy:Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;


# direct methods
.method constructor <init>()V
    .locals 2

    const/16 v1, 0xb

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->REV10:[S

    const/16 v0, 0x1b

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->gauss_1024_12289:[J

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->MAX_BL_SMALL:[I

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->MAX_BL_LARGE:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_4

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->bitlength_avg:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_5

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->bitlength_std:[I

    const/4 v0, 0x4

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->DEPTH_INT_FG:I

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->primes:Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->vrfy:Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;

    return-void

    :array_0
    .array-data 2
        0x0s
        0x200s
        0x100s
        0x300s
        0x80s
        0x280s
        0x180s
        0x380s
        0x40s
        0x240s
        0x140s
        0x340s
        0xc0s
        0x2c0s
        0x1c0s
        0x3c0s
        0x20s
        0x220s
        0x120s
        0x320s
        0xa0s
        0x2a0s
        0x1a0s
        0x3a0s
        0x60s
        0x260s
        0x160s
        0x360s
        0xe0s
        0x2e0s
        0x1e0s
        0x3e0s
        0x10s
        0x210s
        0x110s
        0x310s
        0x90s
        0x290s
        0x190s
        0x390s
        0x50s
        0x250s
        0x150s
        0x350s
        0xd0s
        0x2d0s
        0x1d0s
        0x3d0s
        0x30s
        0x230s
        0x130s
        0x330s
        0xb0s
        0x2b0s
        0x1b0s
        0x3b0s
        0x70s
        0x270s
        0x170s
        0x370s
        0xf0s
        0x2f0s
        0x1f0s
        0x3f0s
        0x8s
        0x208s
        0x108s
        0x308s
        0x88s
        0x288s
        0x188s
        0x388s
        0x48s
        0x248s
        0x148s
        0x348s
        0xc8s
        0x2c8s
        0x1c8s
        0x3c8s
        0x28s
        0x228s
        0x128s
        0x328s
        0xa8s
        0x2a8s
        0x1a8s
        0x3a8s
        0x68s
        0x268s
        0x168s
        0x368s
        0xe8s
        0x2e8s
        0x1e8s
        0x3e8s
        0x18s
        0x218s
        0x118s
        0x318s
        0x98s
        0x298s
        0x198s
        0x398s
        0x58s
        0x258s
        0x158s
        0x358s
        0xd8s
        0x2d8s
        0x1d8s
        0x3d8s
        0x38s
        0x238s
        0x138s
        0x338s
        0xb8s
        0x2b8s
        0x1b8s
        0x3b8s
        0x78s
        0x278s
        0x178s
        0x378s
        0xf8s
        0x2f8s
        0x1f8s
        0x3f8s
        0x4s
        0x204s
        0x104s
        0x304s
        0x84s
        0x284s
        0x184s
        0x384s
        0x44s
        0x244s
        0x144s
        0x344s
        0xc4s
        0x2c4s
        0x1c4s
        0x3c4s
        0x24s
        0x224s
        0x124s
        0x324s
        0xa4s
        0x2a4s
        0x1a4s
        0x3a4s
        0x64s
        0x264s
        0x164s
        0x364s
        0xe4s
        0x2e4s
        0x1e4s
        0x3e4s
        0x14s
        0x214s
        0x114s
        0x314s
        0x94s
        0x294s
        0x194s
        0x394s
        0x54s
        0x254s
        0x154s
        0x354s
        0xd4s
        0x2d4s
        0x1d4s
        0x3d4s
        0x34s
        0x234s
        0x134s
        0x334s
        0xb4s
        0x2b4s
        0x1b4s
        0x3b4s
        0x74s
        0x274s
        0x174s
        0x374s
        0xf4s
        0x2f4s
        0x1f4s
        0x3f4s
        0xcs
        0x20cs
        0x10cs
        0x30cs
        0x8cs
        0x28cs
        0x18cs
        0x38cs
        0x4cs
        0x24cs
        0x14cs
        0x34cs
        0xccs
        0x2ccs
        0x1ccs
        0x3ccs
        0x2cs
        0x22cs
        0x12cs
        0x32cs
        0xacs
        0x2acs
        0x1acs
        0x3acs
        0x6cs
        0x26cs
        0x16cs
        0x36cs
        0xecs
        0x2ecs
        0x1ecs
        0x3ecs
        0x1cs
        0x21cs
        0x11cs
        0x31cs
        0x9cs
        0x29cs
        0x19cs
        0x39cs
        0x5cs
        0x25cs
        0x15cs
        0x35cs
        0xdcs
        0x2dcs
        0x1dcs
        0x3dcs
        0x3cs
        0x23cs
        0x13cs
        0x33cs
        0xbcs
        0x2bcs
        0x1bcs
        0x3bcs
        0x7cs
        0x27cs
        0x17cs
        0x37cs
        0xfcs
        0x2fcs
        0x1fcs
        0x3fcs
        0x2s
        0x202s
        0x102s
        0x302s
        0x82s
        0x282s
        0x182s
        0x382s
        0x42s
        0x242s
        0x142s
        0x342s
        0xc2s
        0x2c2s
        0x1c2s
        0x3c2s
        0x22s
        0x222s
        0x122s
        0x322s
        0xa2s
        0x2a2s
        0x1a2s
        0x3a2s
        0x62s
        0x262s
        0x162s
        0x362s
        0xe2s
        0x2e2s
        0x1e2s
        0x3e2s
        0x12s
        0x212s
        0x112s
        0x312s
        0x92s
        0x292s
        0x192s
        0x392s
        0x52s
        0x252s
        0x152s
        0x352s
        0xd2s
        0x2d2s
        0x1d2s
        0x3d2s
        0x32s
        0x232s
        0x132s
        0x332s
        0xb2s
        0x2b2s
        0x1b2s
        0x3b2s
        0x72s
        0x272s
        0x172s
        0x372s
        0xf2s
        0x2f2s
        0x1f2s
        0x3f2s
        0xas
        0x20as
        0x10as
        0x30as
        0x8as
        0x28as
        0x18as
        0x38as
        0x4as
        0x24as
        0x14as
        0x34as
        0xcas
        0x2cas
        0x1cas
        0x3cas
        0x2as
        0x22as
        0x12as
        0x32as
        0xaas
        0x2aas
        0x1aas
        0x3aas
        0x6as
        0x26as
        0x16as
        0x36as
        0xeas
        0x2eas
        0x1eas
        0x3eas
        0x1as
        0x21as
        0x11as
        0x31as
        0x9as
        0x29as
        0x19as
        0x39as
        0x5as
        0x25as
        0x15as
        0x35as
        0xdas
        0x2das
        0x1das
        0x3das
        0x3as
        0x23as
        0x13as
        0x33as
        0xbas
        0x2bas
        0x1bas
        0x3bas
        0x7as
        0x27as
        0x17as
        0x37as
        0xfas
        0x2fas
        0x1fas
        0x3fas
        0x6s
        0x206s
        0x106s
        0x306s
        0x86s
        0x286s
        0x186s
        0x386s
        0x46s
        0x246s
        0x146s
        0x346s
        0xc6s
        0x2c6s
        0x1c6s
        0x3c6s
        0x26s
        0x226s
        0x126s
        0x326s
        0xa6s
        0x2a6s
        0x1a6s
        0x3a6s
        0x66s
        0x266s
        0x166s
        0x366s
        0xe6s
        0x2e6s
        0x1e6s
        0x3e6s
        0x16s
        0x216s
        0x116s
        0x316s
        0x96s
        0x296s
        0x196s
        0x396s
        0x56s
        0x256s
        0x156s
        0x356s
        0xd6s
        0x2d6s
        0x1d6s
        0x3d6s
        0x36s
        0x236s
        0x136s
        0x336s
        0xb6s
        0x2b6s
        0x1b6s
        0x3b6s
        0x76s
        0x276s
        0x176s
        0x376s
        0xf6s
        0x2f6s
        0x1f6s
        0x3f6s
        0xes
        0x20es
        0x10es
        0x30es
        0x8es
        0x28es
        0x18es
        0x38es
        0x4es
        0x24es
        0x14es
        0x34es
        0xces
        0x2ces
        0x1ces
        0x3ces
        0x2es
        0x22es
        0x12es
        0x32es
        0xaes
        0x2aes
        0x1aes
        0x3aes
        0x6es
        0x26es
        0x16es
        0x36es
        0xees
        0x2ees
        0x1ees
        0x3ees
        0x1es
        0x21es
        0x11es
        0x31es
        0x9es
        0x29es
        0x19es
        0x39es
        0x5es
        0x25es
        0x15es
        0x35es
        0xdes
        0x2des
        0x1des
        0x3des
        0x3es
        0x23es
        0x13es
        0x33es
        0xbes
        0x2bes
        0x1bes
        0x3bes
        0x7es
        0x27es
        0x17es
        0x37es
        0xfes
        0x2fes
        0x1fes
        0x3fes
        0x1s
        0x201s
        0x101s
        0x301s
        0x81s
        0x281s
        0x181s
        0x381s
        0x41s
        0x241s
        0x141s
        0x341s
        0xc1s
        0x2c1s
        0x1c1s
        0x3c1s
        0x21s
        0x221s
        0x121s
        0x321s
        0xa1s
        0x2a1s
        0x1a1s
        0x3a1s
        0x61s
        0x261s
        0x161s
        0x361s
        0xe1s
        0x2e1s
        0x1e1s
        0x3e1s
        0x11s
        0x211s
        0x111s
        0x311s
        0x91s
        0x291s
        0x191s
        0x391s
        0x51s
        0x251s
        0x151s
        0x351s
        0xd1s
        0x2d1s
        0x1d1s
        0x3d1s
        0x31s
        0x231s
        0x131s
        0x331s
        0xb1s
        0x2b1s
        0x1b1s
        0x3b1s
        0x71s
        0x271s
        0x171s
        0x371s
        0xf1s
        0x2f1s
        0x1f1s
        0x3f1s
        0x9s
        0x209s
        0x109s
        0x309s
        0x89s
        0x289s
        0x189s
        0x389s
        0x49s
        0x249s
        0x149s
        0x349s
        0xc9s
        0x2c9s
        0x1c9s
        0x3c9s
        0x29s
        0x229s
        0x129s
        0x329s
        0xa9s
        0x2a9s
        0x1a9s
        0x3a9s
        0x69s
        0x269s
        0x169s
        0x369s
        0xe9s
        0x2e9s
        0x1e9s
        0x3e9s
        0x19s
        0x219s
        0x119s
        0x319s
        0x99s
        0x299s
        0x199s
        0x399s
        0x59s
        0x259s
        0x159s
        0x359s
        0xd9s
        0x2d9s
        0x1d9s
        0x3d9s
        0x39s
        0x239s
        0x139s
        0x339s
        0xb9s
        0x2b9s
        0x1b9s
        0x3b9s
        0x79s
        0x279s
        0x179s
        0x379s
        0xf9s
        0x2f9s
        0x1f9s
        0x3f9s
        0x5s
        0x205s
        0x105s
        0x305s
        0x85s
        0x285s
        0x185s
        0x385s
        0x45s
        0x245s
        0x145s
        0x345s
        0xc5s
        0x2c5s
        0x1c5s
        0x3c5s
        0x25s
        0x225s
        0x125s
        0x325s
        0xa5s
        0x2a5s
        0x1a5s
        0x3a5s
        0x65s
        0x265s
        0x165s
        0x365s
        0xe5s
        0x2e5s
        0x1e5s
        0x3e5s
        0x15s
        0x215s
        0x115s
        0x315s
        0x95s
        0x295s
        0x195s
        0x395s
        0x55s
        0x255s
        0x155s
        0x355s
        0xd5s
        0x2d5s
        0x1d5s
        0x3d5s
        0x35s
        0x235s
        0x135s
        0x335s
        0xb5s
        0x2b5s
        0x1b5s
        0x3b5s
        0x75s
        0x275s
        0x175s
        0x375s
        0xf5s
        0x2f5s
        0x1f5s
        0x3f5s
        0xds
        0x20ds
        0x10ds
        0x30ds
        0x8ds
        0x28ds
        0x18ds
        0x38ds
        0x4ds
        0x24ds
        0x14ds
        0x34ds
        0xcds
        0x2cds
        0x1cds
        0x3cds
        0x2ds
        0x22ds
        0x12ds
        0x32ds
        0xads
        0x2ads
        0x1ads
        0x3ads
        0x6ds
        0x26ds
        0x16ds
        0x36ds
        0xeds
        0x2eds
        0x1eds
        0x3eds
        0x1ds
        0x21ds
        0x11ds
        0x31ds
        0x9ds
        0x29ds
        0x19ds
        0x39ds
        0x5ds
        0x25ds
        0x15ds
        0x35ds
        0xdds
        0x2dds
        0x1dds
        0x3dds
        0x3ds
        0x23ds
        0x13ds
        0x33ds
        0xbds
        0x2bds
        0x1bds
        0x3bds
        0x7ds
        0x27ds
        0x17ds
        0x37ds
        0xfds
        0x2fds
        0x1fds
        0x3fds
        0x3s
        0x203s
        0x103s
        0x303s
        0x83s
        0x283s
        0x183s
        0x383s
        0x43s
        0x243s
        0x143s
        0x343s
        0xc3s
        0x2c3s
        0x1c3s
        0x3c3s
        0x23s
        0x223s
        0x123s
        0x323s
        0xa3s
        0x2a3s
        0x1a3s
        0x3a3s
        0x63s
        0x263s
        0x163s
        0x363s
        0xe3s
        0x2e3s
        0x1e3s
        0x3e3s
        0x13s
        0x213s
        0x113s
        0x313s
        0x93s
        0x293s
        0x193s
        0x393s
        0x53s
        0x253s
        0x153s
        0x353s
        0xd3s
        0x2d3s
        0x1d3s
        0x3d3s
        0x33s
        0x233s
        0x133s
        0x333s
        0xb3s
        0x2b3s
        0x1b3s
        0x3b3s
        0x73s
        0x273s
        0x173s
        0x373s
        0xf3s
        0x2f3s
        0x1f3s
        0x3f3s
        0xbs
        0x20bs
        0x10bs
        0x30bs
        0x8bs
        0x28bs
        0x18bs
        0x38bs
        0x4bs
        0x24bs
        0x14bs
        0x34bs
        0xcbs
        0x2cbs
        0x1cbs
        0x3cbs
        0x2bs
        0x22bs
        0x12bs
        0x32bs
        0xabs
        0x2abs
        0x1abs
        0x3abs
        0x6bs
        0x26bs
        0x16bs
        0x36bs
        0xebs
        0x2ebs
        0x1ebs
        0x3ebs
        0x1bs
        0x21bs
        0x11bs
        0x31bs
        0x9bs
        0x29bs
        0x19bs
        0x39bs
        0x5bs
        0x25bs
        0x15bs
        0x35bs
        0xdbs
        0x2dbs
        0x1dbs
        0x3dbs
        0x3bs
        0x23bs
        0x13bs
        0x33bs
        0xbbs
        0x2bbs
        0x1bbs
        0x3bbs
        0x7bs
        0x27bs
        0x17bs
        0x37bs
        0xfbs
        0x2fbs
        0x1fbs
        0x3fbs
        0x7s
        0x207s
        0x107s
        0x307s
        0x87s
        0x287s
        0x187s
        0x387s
        0x47s
        0x247s
        0x147s
        0x347s
        0xc7s
        0x2c7s
        0x1c7s
        0x3c7s
        0x27s
        0x227s
        0x127s
        0x327s
        0xa7s
        0x2a7s
        0x1a7s
        0x3a7s
        0x67s
        0x267s
        0x167s
        0x367s
        0xe7s
        0x2e7s
        0x1e7s
        0x3e7s
        0x17s
        0x217s
        0x117s
        0x317s
        0x97s
        0x297s
        0x197s
        0x397s
        0x57s
        0x257s
        0x157s
        0x357s
        0xd7s
        0x2d7s
        0x1d7s
        0x3d7s
        0x37s
        0x237s
        0x137s
        0x337s
        0xb7s
        0x2b7s
        0x1b7s
        0x3b7s
        0x77s
        0x277s
        0x177s
        0x377s
        0xf7s
        0x2f7s
        0x1f7s
        0x3f7s
        0xfs
        0x20fs
        0x10fs
        0x30fs
        0x8fs
        0x28fs
        0x18fs
        0x38fs
        0x4fs
        0x24fs
        0x14fs
        0x34fs
        0xcfs
        0x2cfs
        0x1cfs
        0x3cfs
        0x2fs
        0x22fs
        0x12fs
        0x32fs
        0xafs
        0x2afs
        0x1afs
        0x3afs
        0x6fs
        0x26fs
        0x16fs
        0x36fs
        0xefs
        0x2efs
        0x1efs
        0x3efs
        0x1fs
        0x21fs
        0x11fs
        0x31fs
        0x9fs
        0x29fs
        0x19fs
        0x39fs
        0x5fs
        0x25fs
        0x15fs
        0x35fs
        0xdfs
        0x2dfs
        0x1dfs
        0x3dfs
        0x3fs
        0x23fs
        0x13fs
        0x33fs
        0xbfs
        0x2bfs
        0x1bfs
        0x3bfs
        0x7fs
        0x27fs
        0x17fs
        0x37fs
        0xffs
        0x2ffs
        0x1ffs
        0x3ffs
    .end array-data

    :array_1
    .array-data 8
        0x11d137d82df2ab58L    # 7.442682835852581E-223
        0x590c40f63ff5f974L    # 9.119782724244173E120
        0x3898e41d85b975b7L    # 4.681490977171112E-36
        0x20a964ef50858ff9L
        0x1107d1ae973857ebL    # 1.256834460130344E-226
        0x7fe1ec29220ea37L
        0x35dafcacd37a439L
        0x144d98306216d42L
        0x6d6beeeaf81655L
        0x20e1a00d6fa84cL
        0x8cdddcd9dda9cL
        0x2192fc3dcdcb4L
        0x71dfcd3c57e9L    # 6.1860000510735E-310
        0x1574938d76ebL
        0x3974b0c33e5L
        0x889d3da6feL
        0x1204ddc6cbL
        0x21bd3b27aL
        0x38091f5e
        0x5287db0
        0x6bc528
        0x7cbfb
        0x7ffc
        0x746
        0x5e
        0x4
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x1
        0x2
        0x2
        0x4
        0x7
        0xe
        0x1b
        0x35
        0x6a
        0xd1
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x2
        0x5
        0x7
        0xc
        0x15
        0x28
        0x4e
        0x9d
        0x134
    .end array-data

    :array_4
    .array-data 4
        0x4
        0xb
        0x18
        0x32
        0x66
        0xca
        0x191
        0x31a
        0x629
        0xc42
        0x18a4
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x1
        0x1
        0x1
        0x1
        0x2
        0x4
        0x5
        0x8
        0xd
        0x19
    .end array-data
.end method

.method private static mkn(I)I
    .locals 1

    const/4 v0, 0x1

    shl-int/2addr v0, p0

    return v0
.end method

.method private toUnsignedLong(I)J
    .locals 4

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method get_rng_u64(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;)J
    .locals 9

    const/16 v8, 0x8

    const/4 v2, 0x0

    const-wide/16 v6, 0xff

    new-array v0, v8, [B

    array-length v1, v0

    invoke-virtual {p1, v0, v2, v1}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->inner_shake256_extract([BII)V

    aget-byte v1, v0, v2

    int-to-long v2, v1

    and-long/2addr v2, v6

    const/4 v1, 0x1

    aget-byte v1, v0, v1

    int-to-long v4, v1

    and-long/2addr v4, v6

    shl-long/2addr v4, v8

    or-long/2addr v2, v4

    const/4 v1, 0x2

    aget-byte v1, v0, v1

    int-to-long v4, v1

    and-long/2addr v4, v6

    const/16 v1, 0x10

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    const/4 v1, 0x3

    aget-byte v1, v0, v1

    int-to-long v4, v1

    and-long/2addr v4, v6

    const/16 v1, 0x18

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    const/4 v1, 0x4

    aget-byte v1, v0, v1

    int-to-long v4, v1

    and-long/2addr v4, v6

    const/16 v1, 0x20

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    const/4 v1, 0x5

    aget-byte v1, v0, v1

    int-to-long v4, v1

    and-long/2addr v4, v6

    const/16 v1, 0x28

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    const/4 v1, 0x6

    aget-byte v1, v0, v1

    int-to-long v4, v1

    and-long/2addr v4, v6

    const/16 v1, 0x30

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    const/4 v1, 0x7

    aget-byte v0, v0, v1

    int-to-long v0, v0

    and-long/2addr v0, v6

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method keygen(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;[BI[BI[BI[BI[SII)V
    .locals 22

    invoke-static/range {p12 .. p12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->mkn(I)I

    move-result v21

    :cond_0
    :goto_0
    mul-int/lit8 v6, v21, 0x3

    new-array v7, v6, [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p12

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_small_mkgauss(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;[BII)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p12

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_small_mkgauss(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;[BII)V

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->max_fg_bits:[B

    aget-byte v8, v8, p12

    add-int/lit8 v8, v8, -0x1

    shl-int/2addr v6, v8

    const/4 v8, 0x0

    :goto_1
    move/from16 v0, v21

    if-ge v8, v0, :cond_2

    add-int v9, p3, v8

    aget-byte v9, p2, v9

    if-ge v9, v6, :cond_1

    add-int v9, p3, v8

    aget-byte v9, p2, v9

    neg-int v10, v6

    if-le v9, v10, :cond_1

    add-int v9, p5, v8

    aget-byte v9, p4, v9

    if-ge v9, v6, :cond_1

    add-int v9, p5, v8

    aget-byte v9, p4, v9

    neg-int v10, v6

    if-gt v9, v10, :cond_3

    :cond_1
    const/4 v6, -0x1

    :cond_2
    if-ltz v6, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p12

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_small_sqnorm([BII)I

    move-result v6

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p12

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_small_sqnorm([BII)I

    move-result v8

    add-int v9, v6, v8

    or-int/2addr v6, v8

    ushr-int/lit8 v6, v6, 0x1f

    neg-int v6, v6

    or-int/2addr v6, v9

    int-to-long v8, v6

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    const-wide/16 v10, 0x41b7

    cmp-long v6, v8, v10

    if-gez v6, :cond_0

    const/4 v8, 0x0

    add-int v15, v8, v21

    add-int v17, v15, v21

    move-object/from16 v6, p0

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p12

    invoke-virtual/range {v6 .. v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_small_to_fp([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BII)V

    move-object/from16 v9, p0

    move-object v10, v7

    move v11, v15

    move-object/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p12

    invoke-virtual/range {v9 .. v14}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_small_to_fp([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BII)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move/from16 v0, p12

    invoke-virtual {v6, v7, v8, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move/from16 v0, p12

    invoke-virtual {v6, v7, v15, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object v10, v7

    move/from16 v11, v17

    move-object v12, v7

    move v13, v8

    move-object v14, v7

    move/from16 v16, p12

    invoke-virtual/range {v9 .. v16}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_invnorm2_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move/from16 v0, p12

    invoke-virtual {v6, v7, v8, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_adj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move/from16 v0, p12

    invoke-virtual {v6, v7, v15, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_adj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_q:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move/from16 v0, p12

    invoke-virtual {v6, v7, v8, v9, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mulconst([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;ILorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_q:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move/from16 v0, p12

    invoke-virtual {v6, v7, v15, v9, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mulconst([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;ILorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object v9, v7

    move/from16 v10, v17

    move/from16 v11, p12

    invoke-virtual/range {v6 .. v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_autoadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object v14, v7

    move-object/from16 v16, v7

    move/from16 v18, p12

    invoke-virtual/range {v13 .. v18}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_autoadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move/from16 v0, p12

    invoke-virtual {v6, v7, v8, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->iFFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move/from16 v0, p12

    invoke-virtual {v6, v7, v15, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->iFFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_zero:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const/4 v9, 0x0

    :goto_2
    move/from16 v0, v21

    if-ge v9, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v12, v8, v9

    aget-object v12, v7, v12

    invoke-virtual {v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v11

    invoke-virtual {v10, v6, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v12, v15, v9

    aget-object v12, v7, v12

    invoke-virtual {v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v11

    invoke-virtual {v10, v6, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_bnorm_max:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v7, v6, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_lt(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Z

    move-result v6

    if-eqz v6, :cond_0

    mul-int/lit8 v6, v21, 0x2

    new-array v14, v6, [S

    if-nez p10, :cond_5

    const/4 v8, 0x0

    add-int v15, v8, v21

    move-object v7, v14

    :goto_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->vrfy:Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;

    move-object/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p12

    invoke-virtual/range {v6 .. v15}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->compute_public([SI[BI[BII[SI)I

    move-result v6

    if-nez v6, :cond_6

    move-object/from16 p10, v7

    goto/16 :goto_0

    :cond_5
    const/4 v15, 0x0

    move/from16 v8, p11

    move-object/from16 v7, p10

    goto :goto_3

    :cond_6
    const/4 v6, 0x2

    move/from16 v0, p12

    if-le v0, v6, :cond_7

    mul-int/lit8 v6, v21, 0x1c

    new-array v0, v6, [I

    move-object/from16 v19, v0

    :goto_4
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->max_FG_bits:[B

    aget-byte v8, v8, p12

    add-int/lit8 v8, v8, -0x1

    shl-int/2addr v6, v8

    add-int/lit8 v18, v6, -0x1

    const/16 v20, 0x0

    move-object/from16 v8, p0

    move/from16 v9, p12

    move-object/from16 v10, p6

    move/from16 v11, p7

    move-object/from16 v12, p8

    move/from16 v13, p9

    move-object/from16 v14, p2

    move/from16 v15, p3

    move-object/from16 v16, p4

    move/from16 v17, p5

    invoke-virtual/range {v8 .. v20}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->solve_NTRU(I[BI[BI[BI[BII[II)I

    move-result v6

    if-nez v6, :cond_8

    move-object/from16 p10, v7

    goto/16 :goto_0

    :cond_7
    mul-int/lit8 v6, v21, 0x1c

    mul-int/lit8 v6, v6, 0x3

    new-array v0, v6, [I

    move-object/from16 v19, v0

    goto :goto_4

    :cond_8
    return-void
.end method

.method make_fg([II[BI[BIIII)V
    .locals 19

    invoke-static/range {p7 .. p7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->mkn(I)I

    move-result v2

    add-int v18, p2, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->primes:Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;

    sget-object v4, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;->PRIMES:[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;

    const/4 v1, 0x0

    aget-object v1, v4, v1

    iget v3, v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->p:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    add-int v5, p2, v1

    add-int v6, p4, v1

    aget-byte v6, p3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v6

    aput v6, p1, v5

    add-int v5, v18, v1

    add-int v6, p6, v1

    aget-byte v6, p5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v6

    aput v6, p1, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-nez p8, :cond_2

    if-eqz p9, :cond_2

    const/4 v1, 0x0

    aget-object v1, v4, v1

    iget v8, v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->p:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_ninv31(I)I

    move-result v9

    add-int v3, v18, v2

    add-int v5, v3, v2

    const/4 v1, 0x0

    aget-object v1, v4, v1

    iget v7, v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->g:I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p1

    move/from16 v6, p7

    invoke-virtual/range {v1 .. v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_mkgm2([II[IIIIII)V

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    move-object/from16 v13, p1

    move v14, v3

    move/from16 v15, p7

    move/from16 v16, v8

    move/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, v18

    move-object/from16 v13, p1

    move v14, v3

    move/from16 v15, p7

    move/from16 v16, v8

    move/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    :cond_1
    return-void

    :cond_2
    const/4 v5, 0x0

    :goto_1
    move/from16 v0, p8

    if-ge v5, v0, :cond_1

    sub-int v4, p7, v5

    if-eqz v5, :cond_4

    const/4 v6, 0x1

    :goto_2
    add-int/lit8 v1, v5, 0x1

    move/from16 v0, p8

    if-lt v1, v0, :cond_3

    if-eqz p9, :cond_5

    :cond_3
    const/4 v7, 0x1

    :goto_3
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->make_fg_step([IIIIII)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    goto :goto_3
.end method

.method make_fg_step([IIIIII)V
    .locals 35

    const/4 v4, 0x1

    shl-int v29, v4, p3

    shr-int/lit8 v30, v29, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->MAX_BL_SMALL:[I

    aget v28, v4, p4

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->MAX_BL_SMALL:[I

    add-int/lit8 v5, p4, 0x1

    aget v31, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->primes:Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;

    sget-object v32, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;->PRIMES:[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;

    mul-int v4, v30, v31

    add-int v33, p2, v4

    mul-int v4, v30, v31

    add-int v27, v33, v4

    mul-int v4, v29, v28

    add-int v26, v27, v4

    mul-int v4, v29, v28

    add-int v6, v26, v4

    add-int v8, v6, v29

    add-int v15, v8, v29

    mul-int/lit8 v4, v29, 0x2

    mul-int v4, v4, v28

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p1

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x0

    move/from16 v25, v4

    :goto_0
    move/from16 v0, v25

    move/from16 v1, v28

    if-ge v0, v1, :cond_9

    aget-object v4, v32, v25

    iget v11, v4, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->p:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_ninv31(I)I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_R2(II)I

    move-result v34

    aget-object v4, v32, v25

    iget v10, v4, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->g:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p1

    move/from16 v9, p3

    invoke-virtual/range {v4 .. v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_mkgm2([II[IIIIII)V

    const/4 v5, 0x0

    add-int v4, v27, v25

    :goto_1
    move/from16 v0, v29

    if-ge v5, v0, :cond_0

    add-int v7, v15, v5

    aget v9, p1, v4

    aput v9, p1, v7

    add-int/lit8 v5, v5, 0x1

    add-int v4, v4, v28

    goto :goto_1

    :cond_0
    if-nez p5, :cond_1

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v16, p1

    move/from16 v17, v6

    move/from16 v18, p3

    move/from16 v19, v11

    move/from16 v20, v12

    invoke-virtual/range {v13 .. v20}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    :cond_1
    const/4 v5, 0x0

    add-int v4, p2, v25

    :goto_2
    move/from16 v0, v30

    if-ge v5, v0, :cond_2

    shl-int/lit8 v7, v5, 0x1

    add-int/2addr v7, v15

    add-int/lit8 v7, v7, 0x0

    aget v7, p1, v7

    shl-int/lit8 v9, v5, 0x1

    add-int/2addr v9, v15

    add-int/lit8 v9, v9, 0x1

    aget v9, p1, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v7

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v7, v1, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v7

    aput v7, p1, v4

    add-int/lit8 v5, v5, 0x1

    add-int v4, v4, v31

    goto :goto_2

    :cond_2
    if-eqz p5, :cond_3

    add-int v18, v27, v25

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    move/from16 v19, v28

    move-object/from16 v20, p1

    move/from16 v21, v8

    move/from16 v22, p3

    move/from16 v23, v11

    move/from16 v24, v12

    invoke-virtual/range {v16 .. v24}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2_ext([III[IIIII)V

    :cond_3
    const/4 v5, 0x0

    add-int v4, v26, v25

    :goto_3
    move/from16 v0, v29

    if-ge v5, v0, :cond_4

    add-int v7, v15, v5

    aget v9, p1, v4

    aput v9, p1, v7

    add-int/lit8 v5, v5, 0x1

    add-int v4, v4, v28

    goto :goto_3

    :cond_4
    if-nez p5, :cond_5

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v16, p1

    move/from16 v17, v6

    move/from16 v18, p3

    move/from16 v19, v11

    move/from16 v20, v12

    invoke-virtual/range {v13 .. v20}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    :cond_5
    const/4 v5, 0x0

    add-int v4, v33, v25

    :goto_4
    move/from16 v0, v30

    if-ge v5, v0, :cond_6

    shl-int/lit8 v7, v5, 0x1

    add-int/2addr v7, v15

    add-int/lit8 v7, v7, 0x0

    aget v7, p1, v7

    shl-int/lit8 v9, v5, 0x1

    add-int/2addr v9, v15

    add-int/lit8 v9, v9, 0x1

    aget v9, p1, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v7

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v7, v1, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v7

    aput v7, p1, v4

    add-int/lit8 v5, v5, 0x1

    add-int v4, v4, v31

    goto :goto_4

    :cond_6
    if-eqz p5, :cond_7

    add-int v18, v26, v25

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    move/from16 v19, v28

    move-object/from16 v20, p1

    move/from16 v21, v8

    move/from16 v22, p3

    move/from16 v23, v11

    move/from16 v24, v12

    invoke-virtual/range {v16 .. v24}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2_ext([III[IIIII)V

    :cond_7
    if-nez p6, :cond_8

    add-int v18, p2, v25

    add-int/lit8 v22, p3, -0x1

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    move/from16 v19, v31

    move-object/from16 v20, p1

    move/from16 v21, v8

    move/from16 v23, v11

    move/from16 v24, v12

    invoke-virtual/range {v16 .. v24}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2_ext([III[IIIII)V

    add-int v18, v33, v25

    add-int/lit8 v22, p3, -0x1

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    move/from16 v19, v31

    move-object/from16 v20, p1

    move/from16 v21, v8

    move/from16 v23, v11

    move/from16 v24, v12

    invoke-virtual/range {v16 .. v24}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2_ext([III[IIIII)V

    :cond_8
    add-int/lit8 v4, v25, 0x1

    move/from16 v25, v4

    goto/16 :goto_0

    :cond_9
    const/16 v23, 0x1

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    move/from16 v18, v27

    move/from16 v19, v28

    move/from16 v20, v28

    move/from16 v21, v29

    move-object/from16 v22, v32

    move-object/from16 v24, p1

    move/from16 v25, v6

    invoke-virtual/range {v16 .. v25}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_rebuild_CRT([IIIII[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;I[II)V

    const/16 v23, 0x1

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    move/from16 v18, v26

    move/from16 v19, v28

    move/from16 v20, v28

    move/from16 v21, v29

    move-object/from16 v22, v32

    move-object/from16 v24, p1

    move/from16 v25, v6

    invoke-virtual/range {v16 .. v25}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_rebuild_CRT([IIIII[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;I[II)V

    move/from16 v25, v28

    :goto_5
    move/from16 v0, v25

    move/from16 v1, v31

    if-ge v0, v1, :cond_f

    aget-object v4, v32, v25

    iget v11, v4, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->p:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_ninv31(I)I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_R2(II)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v22

    invoke-virtual {v0, v1, v11, v12, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_Rx(IIII)I

    move-result v23

    aget-object v4, v32, v25

    iget v10, v4, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->g:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p1

    move/from16 v9, p3

    invoke-virtual/range {v4 .. v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_mkgm2([II[IIIIII)V

    const/4 v4, 0x0

    move/from16 v18, v27

    :goto_6
    move/from16 v0, v29

    if-ge v4, v0, :cond_a

    add-int v5, v15, v4

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    move/from16 v19, v28

    move/from16 v20, v11

    move/from16 v21, v12

    invoke-virtual/range {v16 .. v23}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_mod_small_signed([IIIIIII)I

    move-result v7

    aput v7, p1, v5

    add-int/lit8 v4, v4, 0x1

    add-int v18, v18, v28

    goto :goto_6

    :cond_a
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v16, p1

    move/from16 v17, v6

    move/from16 v18, p3

    move/from16 v19, v11

    move/from16 v20, v12

    invoke-virtual/range {v13 .. v20}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    const/4 v5, 0x0

    add-int v4, p2, v25

    :goto_7
    move/from16 v0, v30

    if-ge v5, v0, :cond_b

    shl-int/lit8 v7, v5, 0x1

    add-int/2addr v7, v15

    add-int/lit8 v7, v7, 0x0

    aget v7, p1, v7

    shl-int/lit8 v9, v5, 0x1

    add-int/2addr v9, v15

    add-int/lit8 v9, v9, 0x1

    aget v9, p1, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v7

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v7, v1, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v7

    aput v7, p1, v4

    add-int/lit8 v5, v5, 0x1

    add-int v4, v4, v31

    goto :goto_7

    :cond_b
    const/4 v4, 0x0

    move/from16 v18, v26

    :goto_8
    move/from16 v0, v29

    if-ge v4, v0, :cond_c

    add-int v5, v15, v4

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    move/from16 v19, v28

    move/from16 v20, v11

    move/from16 v21, v12

    invoke-virtual/range {v16 .. v23}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_mod_small_signed([IIIIIII)I

    move-result v7

    aput v7, p1, v5

    add-int/lit8 v4, v4, 0x1

    add-int v18, v18, v28

    goto :goto_8

    :cond_c
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v16, p1

    move/from16 v17, v6

    move/from16 v18, p3

    move/from16 v19, v11

    move/from16 v20, v12

    invoke-virtual/range {v13 .. v20}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    const/4 v5, 0x0

    add-int v4, v33, v25

    :goto_9
    move/from16 v0, v30

    if-ge v5, v0, :cond_d

    shl-int/lit8 v7, v5, 0x1

    add-int/2addr v7, v15

    add-int/lit8 v7, v7, 0x0

    aget v7, p1, v7

    shl-int/lit8 v9, v5, 0x1

    add-int/2addr v9, v15

    add-int/lit8 v9, v9, 0x1

    aget v9, p1, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v7

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v7, v1, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v7

    aput v7, p1, v4

    add-int/lit8 v5, v5, 0x1

    add-int v4, v4, v31

    goto :goto_9

    :cond_d
    if-nez p6, :cond_e

    add-int v18, p2, v25

    add-int/lit8 v22, p3, -0x1

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    move/from16 v19, v31

    move-object/from16 v20, p1

    move/from16 v21, v8

    move/from16 v23, v11

    move/from16 v24, v12

    invoke-virtual/range {v16 .. v24}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2_ext([III[IIIII)V

    add-int v18, v33, v25

    add-int/lit8 v22, p3, -0x1

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    move/from16 v19, v31

    move-object/from16 v20, p1

    move/from16 v21, v8

    move/from16 v23, v11

    move/from16 v24, v12

    invoke-virtual/range {v16 .. v24}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2_ext([III[IIIII)V

    :cond_e
    add-int/lit8 v4, v25, 0x1

    move/from16 v25, v4

    goto/16 :goto_5

    :cond_f
    return-void
.end method

.method mkgauss(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;I)I
    .locals 12

    const/4 v0, 0x1

    rsub-int/lit8 v1, p2, 0xa

    shl-int v5, v0, v1

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v3, v0

    move v4, v1

    :goto_0
    if-ge v4, v5, :cond_1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->get_rng_u64(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;)J

    move-result-wide v0

    const/16 v2, 0x3f

    ushr-long v6, v0, v2

    long-to-int v6, v6

    const-wide v8, 0x7fffffffffffffffL

    and-long/2addr v0, v8

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->gauss_1024_12289:[J

    const/4 v7, 0x0

    aget-wide v8, v2, v7

    sub-long/2addr v0, v8

    const/16 v2, 0x3f

    ushr-long/2addr v0, v2

    long-to-int v2, v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->get_rng_u64(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;)J

    move-result-wide v8

    const-wide v10, 0x7fffffffffffffffL

    and-long/2addr v8, v10

    const/4 v0, 0x1

    :goto_1
    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->gauss_1024_12289:[J

    array-length v7, v7

    if-ge v0, v7, :cond_0

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->gauss_1024_12289:[J

    aget-wide v10, v7, v0

    sub-long v10, v8, v10

    const/16 v7, 0x3f

    ushr-long/2addr v10, v7

    long-to-int v7, v10

    xor-int/lit8 v7, v7, 0x1

    xor-int/lit8 v10, v2, 0x1

    and-int/2addr v10, v7

    neg-int v10, v10

    and-int/2addr v10, v0

    or-int/2addr v1, v10

    or-int/2addr v2, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    neg-int v0, v6

    xor-int/2addr v0, v1

    add-int/2addr v0, v6

    add-int/2addr v0, v3

    add-int/lit8 v1, v4, 0x1

    move v3, v0

    move v4, v1

    goto :goto_0

    :cond_1
    return v3
.end method

.method modp_NTT2([II[IIIII)V
    .locals 9

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2_ext([III[IIIII)V

    return-void
.end method

.method modp_NTT2_ext([III[IIIII)V
    .locals 15

    if-nez p6, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static/range {p6 .. p6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->mkn(I)I

    move-result v9

    const/4 v2, 0x1

    move v7, v2

    move v8, v9

    :goto_0
    if-ge v7, v9, :cond_0

    shr-int/lit8 v10, v8, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    move v5, v2

    move v6, v3

    :goto_1
    if-ge v6, v7, :cond_3

    add-int v2, p5, v7

    add-int/2addr v2, v6

    aget v11, p4, v2

    mul-int v2, v5, p3

    add-int v3, p2, v2

    mul-int v2, v10, p3

    add-int/2addr v2, v3

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v10, :cond_2

    aget v12, p1, v3

    aget v13, p1, v2

    move/from16 v0, p7

    move/from16 v1, p8

    invoke-virtual {p0, v13, v11, v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v13

    move/from16 v0, p7

    invoke-virtual {p0, v12, v13, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_add(III)I

    move-result v14

    aput v14, p1, v3

    move/from16 v0, p7

    invoke-virtual {p0, v12, v13, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_sub(III)I

    move-result v12

    aput v12, p1, v2

    add-int/lit8 v4, v4, 0x1

    add-int v3, v3, p3

    add-int v2, v2, p3

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v6, 0x1

    add-int v2, v5, v8

    move v5, v2

    move v6, v3

    goto :goto_1

    :cond_3
    shl-int/lit8 v2, v7, 0x1

    move v7, v2

    move v8, v10

    goto :goto_0
.end method

.method modp_R(I)I
    .locals 1

    const/high16 v0, -0x80000000

    sub-int/2addr v0, p1

    return v0
.end method

.method modp_R2(II)I
    .locals 2

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_R(I)I

    move-result v0

    invoke-virtual {p0, v0, v0, p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_add(III)I

    move-result v0

    invoke-virtual {p0, v0, v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v0

    invoke-virtual {p0, v0, v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v0

    invoke-virtual {p0, v0, v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v0

    invoke-virtual {p0, v0, v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v0

    invoke-virtual {p0, v0, v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    neg-int v1, v1

    and-int/2addr v1, p1

    add-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method modp_Rx(IIII)I
    .locals 5

    const/4 v4, 0x1

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, p2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_R(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    shl-int v3, v4, v1

    if-gt v3, v2, :cond_1

    shl-int v3, v4, v1

    and-int/2addr v3, v2

    if-eqz v3, :cond_0

    invoke-virtual {p0, v0, p4, p2, p3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v0

    :cond_0
    invoke-virtual {p0, p4, p4, p2, p3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result p4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method modp_add(III)I
    .locals 2

    add-int v0, p1, p2

    sub-int/2addr v0, p3

    ushr-int/lit8 v1, v0, 0x1f

    neg-int v1, v1

    and-int/2addr v1, p3

    add-int/2addr v0, v1

    return v0
.end method

.method modp_div(IIIII)I
    .locals 5

    add-int/lit8 v1, p3, -0x2

    const/16 v0, 0x1e

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, p5, p5, p3, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v2

    invoke-virtual {p0, v2, p2, p3, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v3

    xor-int/2addr v3, v2

    ushr-int v4, v1, v0

    and-int/lit8 v4, v4, 0x1

    neg-int v4, v4

    and-int/2addr v3, v4

    xor-int p5, v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p5, v0, p3, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v0

    invoke-virtual {p0, p1, v0, p3, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v0

    return v0
.end method

.method modp_iNTT2([II[IIIII)V
    .locals 9

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2_ext([III[IIIII)V

    return-void
.end method

.method modp_iNTT2_ext([III[IIIII)V
    .locals 17

    if-nez p6, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static/range {p6 .. p6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->mkn(I)I

    move-result v9

    const/4 v3, 0x1

    move v8, v9

    move v10, v3

    :goto_0
    const/4 v3, 0x1

    if-le v8, v3, :cond_4

    shr-int/lit8 v12, v8, 0x1

    shl-int/lit8 v11, v10, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    move v6, v3

    move v7, v4

    :goto_1
    if-ge v7, v12, :cond_3

    add-int v3, p5, v12

    add-int/2addr v3, v7

    aget v13, p4, v3

    mul-int v3, v6, p3

    add-int v4, p2, v3

    mul-int v3, v10, p3

    add-int/2addr v3, v4

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v10, :cond_2

    aget v14, p1, v4

    aget v15, p1, v3

    move-object/from16 v0, p0

    move/from16 v1, p7

    invoke-virtual {v0, v14, v15, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_add(III)I

    move-result v16

    aput v16, p1, v4

    move-object/from16 v0, p0

    move/from16 v1, p7

    invoke-virtual {v0, v14, v15, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_sub(III)I

    move-result v14

    move-object/from16 v0, p0

    move/from16 v1, p7

    move/from16 v2, p8

    invoke-virtual {v0, v14, v13, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v14

    aput v14, p1, v3

    add-int/lit8 v5, v5, 0x1

    add-int v4, v4, p3

    add-int v3, v3, p3

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v7, 0x1

    add-int v3, v6, v11

    move v6, v3

    move v7, v4

    goto :goto_1

    :cond_3
    shr-int/lit8 v3, v8, 0x1

    move v8, v3

    move v10, v11

    goto :goto_0

    :cond_4
    const/4 v3, 0x1

    rsub-int/lit8 v4, p6, 0x1f

    shl-int v4, v3, v4

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v9, :cond_0

    aget v5, p1, p2

    move-object/from16 v0, p0

    move/from16 v1, p7

    move/from16 v2, p8

    invoke-virtual {v0, v5, v4, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v5

    aput v5, p1, p2

    add-int/lit8 v3, v3, 0x1

    add-int p2, p2, p3

    goto :goto_3
.end method

.method modp_mkgm2([II[IIIIII)V
    .locals 12

    invoke-static/range {p5 .. p5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->mkn(I)I

    move-result v9

    move/from16 v0, p7

    move/from16 v1, p8

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_R2(II)I

    move-result v4

    move/from16 v0, p6

    move/from16 v1, p7

    move/from16 v2, p8

    invoke-virtual {p0, v0, v4, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v5

    move/from16 v3, p5

    :goto_0
    const/16 v6, 0xa

    if-ge v3, v6, :cond_0

    move/from16 v0, p7

    move/from16 v1, p8

    invoke-virtual {p0, v5, v5, v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move/from16 v0, p7

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_R(I)I

    move-result v8

    move-object v3, p0

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-virtual/range {v3 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_div(IIIII)I

    move-result v8

    rsub-int/lit8 v10, p5, 0xa

    move/from16 v0, p7

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_R(I)I

    move-result v4

    const/4 v7, 0x0

    move v3, v4

    move v6, v4

    :goto_1
    if-ge v7, v9, :cond_1

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->REV10:[S

    shl-int v11, v7, v10

    aget-short v4, v4, v11

    add-int v11, p2, v4

    aput v6, p1, v11

    add-int v4, v4, p4

    aput v3, p3, v4

    move/from16 v0, p7

    move/from16 v1, p8

    invoke-virtual {p0, v6, v5, v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v4

    move/from16 v0, p7

    move/from16 v1, p8

    invoke-virtual {p0, v3, v8, v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v3

    add-int/lit8 v7, v7, 0x1

    move v6, v4

    goto :goto_1

    :cond_1
    return-void
.end method

.method modp_montymul(IIII)I
    .locals 6

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v0

    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v2

    mul-long/2addr v0, v2

    int-to-long v2, p4

    mul-long/2addr v2, v0

    const v4, 0x7fffffff

    invoke-direct {p0, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v4

    and-long/2addr v2, v4

    int-to-long v4, p3

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    const/16 v2, 0x1f

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    sub-int/2addr v0, p3

    ushr-int/lit8 v1, v0, 0x1f

    neg-int v1, v1

    and-int/2addr v1, p3

    add-int/2addr v0, v1

    return v0
.end method

.method modp_ninv31(I)I
    .locals 2

    rsub-int/lit8 v0, p1, 0x2

    mul-int v1, p1, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    mul-int v1, p1, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    mul-int v1, p1, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    mul-int v1, p1, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    const v1, 0x7fffffff

    neg-int v0, v0

    and-int/2addr v0, v1

    return v0
.end method

.method modp_norm(II)I
    .locals 1

    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v0, v0, 0x1

    sub-int v0, p1, v0

    ushr-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p2

    sub-int v0, p1, v0

    return v0
.end method

.method modp_poly_rec_res([IIIIII)V
    .locals 5

    const/4 v0, 0x1

    add-int/lit8 v1, p3, -0x1

    shl-int v1, v0, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    shl-int/lit8 v2, v0, 0x1

    add-int/2addr v2, p2

    add-int/lit8 v2, v2, 0x0

    aget v2, p1, v2

    shl-int/lit8 v3, v0, 0x1

    add-int/2addr v3, p2

    add-int/lit8 v3, v3, 0x1

    aget v3, p1, v3

    add-int v4, p2, v0

    invoke-virtual {p0, v2, v3, p4, p5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v2

    invoke-virtual {p0, v2, p6, p4, p5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v2

    aput v2, p1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method modp_set(II)I
    .locals 1

    ushr-int/lit8 v0, p1, 0x1f

    neg-int v0, v0

    and-int/2addr v0, p2

    add-int/2addr v0, p1

    return v0
.end method

.method modp_sub(III)I
    .locals 2

    sub-int v0, p1, p2

    ushr-int/lit8 v1, v0, 0x1f

    neg-int v1, v1

    and-int/2addr v1, p3

    add-int/2addr v0, v1

    return v0
.end method

.method poly_big_to_fp([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[IIIII)V
    .locals 16

    invoke-static/range {p7 .. p7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->mkn(I)I

    move-result v7

    if-nez p5, :cond_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v7, :cond_2

    add-int v3, p2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_zero:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v4, p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    move v6, v2

    :goto_1
    if-ge v6, v7, :cond_2

    add-int v2, p4, p5

    add-int/lit8 v2, v2, -0x1

    aget v2, p3, v2

    ushr-int/lit8 v2, v2, 0x1e

    neg-int v8, v2

    ushr-int/lit8 v9, v8, 0x1

    and-int/lit8 v4, v8, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v3, v2, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_zero:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_one:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const/4 v5, 0x0

    :goto_2
    move/from16 v0, p5

    if-ge v5, v0, :cond_1

    add-int v10, p4, v5

    aget v10, p3, v10

    xor-int/2addr v10, v9

    add-int/2addr v10, v4

    ushr-int/lit8 v4, v10, 0x1f

    const v11, 0x7fffffff

    and-int/2addr v10, v11

    shl-int/lit8 v11, v10, 0x1

    and-int/2addr v11, v8

    sub-int/2addr v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    int-to-long v14, v10

    invoke-virtual {v13, v14, v15}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v10

    invoke-virtual {v12, v10, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v10

    invoke-virtual {v11, v3, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v11, v11, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_ptwo31:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v10, v2, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    goto :goto_2

    :cond_1
    add-int v2, p2, v6

    aput-object v3, p1, v2

    add-int/lit8 v2, v6, 0x1

    add-int p4, p4, p6

    move v6, v2

    goto :goto_1

    :cond_2
    return-void
.end method

.method poly_big_to_small([BI[IIII)I
    .locals 5

    const/4 v0, 0x0

    invoke-static {p6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->mkn(I)I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    add-int v3, p4, v1

    invoke-virtual {p0, p3, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_one_to_plain([II)I

    move-result v3

    neg-int v4, p5

    if-lt v3, v4, :cond_0

    if-le v3, p5, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    add-int v4, p2, v1

    int-to-byte v3, v3

    aput-byte v3, p1, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method poly_small_mkgauss(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;[BII)V
    .locals 5

    const/4 v1, 0x0

    invoke-static {p4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->mkn(I)I

    move-result v3

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_2

    :cond_0
    invoke-virtual {p0, p1, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->mkgauss(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;I)I

    move-result v1

    const/16 v4, -0x7f

    if-lt v1, v4, :cond_0

    const/16 v4, 0x7f

    if-gt v1, v4, :cond_0

    add-int/lit8 v4, v3, -0x1

    if-ne v2, v4, :cond_1

    and-int/lit8 v4, v1, 0x1

    xor-int/2addr v4, v0

    if-eqz v4, :cond_0

    :goto_1
    add-int v4, p3, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v4

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    and-int/lit8 v4, v1, 0x1

    xor-int/2addr v0, v4

    goto :goto_1

    :cond_2
    return-void
.end method

.method poly_small_sqnorm([BII)I
    .locals 5

    const/4 v1, 0x0

    invoke-static {p3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->mkn(I)I

    move-result v4

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_0

    add-int v1, p2, v3

    aget-byte v1, p1, v1

    mul-int/2addr v1, v1

    add-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 v3, v3, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    ushr-int/lit8 v0, v0, 0x1f

    neg-int v0, v0

    or-int/2addr v0, v2

    return v0
.end method

.method poly_small_to_fp([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BII)V
    .locals 6

    invoke-static {p5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->mkn(I)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    add-int v2, p2, v0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v4, p4, v0

    aget-byte v4, p3, v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    aput-object v3, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method poly_sub_scaled([IIII[IIII[IIIII)V
    .locals 13

    invoke-static/range {p13 .. p13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->mkn(I)I

    move-result v12

    const/4 v0, 0x0

    move v11, v0

    :goto_0
    if-ge v11, v12, :cond_2

    add-int v0, p10, v11

    aget v0, p9, v0

    neg-int v7, v0

    mul-int v0, v11, p4

    add-int v2, p2, v0

    const/4 v0, 0x0

    move/from16 v5, p6

    move v10, v0

    :goto_1
    if-ge v10, v12, :cond_1

    move-object v0, p0

    move-object v1, p1

    move/from16 v3, p3

    move-object/from16 v4, p5

    move/from16 v6, p7

    move/from16 v8, p11

    move/from16 v9, p12

    invoke-virtual/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_add_scaled_mul_small([III[IIIIII)V

    add-int v0, v11, v10

    add-int/lit8 v1, v12, -0x1

    if-ne v0, v1, :cond_0

    neg-int v7, v7

    move v0, p2

    :goto_2
    add-int v5, v5, p8

    add-int/lit8 v1, v10, 0x1

    move v2, v0

    move v10, v1

    goto :goto_1

    :cond_0
    add-int v0, v2, p4

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method poly_sub_scaled_ntt([IIII[IIII[IIIII[II)V
    .locals 35

    invoke-static/range {p13 .. p13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->mkn(I)I

    move-result v33

    add-int/lit8 v25, p7, 0x1

    invoke-static/range {p13 .. p13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->mkn(I)I

    move-result v3

    add-int v7, p15, v3

    invoke-static/range {p13 .. p13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->mkn(I)I

    move-result v3

    add-int v32, v7, v3

    mul-int v3, v33, v25

    add-int v14, v32, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->primes:Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;

    sget-object v34, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;->PRIMES:[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;

    const/4 v3, 0x0

    move/from16 v31, v3

    :goto_0
    move/from16 v0, v31

    move/from16 v1, v25

    if-ge v0, v1, :cond_3

    aget-object v3, v34, v31

    iget v10, v3, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->p:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_ninv31(I)I

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_R2(II)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, p7

    move/from16 v2, v21

    invoke-virtual {v0, v1, v10, v11, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_Rx(IIII)I

    move-result v22

    aget-object v3, v34, v31

    iget v9, v3, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->g:I

    move-object/from16 v3, p0

    move-object/from16 v4, p14

    move/from16 v5, p15

    move-object/from16 v6, p14

    move/from16 v8, p13

    invoke-virtual/range {v3 .. v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_mkgm2([II[IIIIII)V

    const/4 v3, 0x0

    :goto_1
    move/from16 v0, v33

    if-ge v3, v0, :cond_0

    add-int v4, v14, v3

    add-int v5, p10, v3

    aget v5, p9, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v5

    aput v5, p14, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v12, p0

    move-object/from16 v13, p14

    move-object/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p13

    move/from16 v18, v10

    move/from16 v19, v11

    invoke-virtual/range {v12 .. v19}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    const/4 v3, 0x0

    add-int v4, v32, v31

    move/from16 v17, p6

    :goto_2
    move/from16 v0, v33

    if-ge v3, v0, :cond_1

    move-object/from16 v15, p0

    move-object/from16 v16, p5

    move/from16 v18, p7

    move/from16 v19, v10

    move/from16 v20, v11

    invoke-virtual/range {v15 .. v22}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_mod_small_signed([IIIIIII)I

    move-result v5

    aput v5, p14, v4

    add-int/lit8 v3, v3, 0x1

    add-int v17, v17, p8

    add-int v4, v4, v25

    goto :goto_2

    :cond_1
    add-int v24, v32, v31

    move-object/from16 v22, p0

    move-object/from16 v23, p14

    move-object/from16 v26, p14

    move/from16 v27, p15

    move/from16 v28, p13

    move/from16 v29, v10

    move/from16 v30, v11

    invoke-virtual/range {v22 .. v30}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2_ext([III[IIIII)V

    const/4 v3, 0x0

    add-int v4, v32, v31

    :goto_3
    move/from16 v0, v33

    if-ge v3, v0, :cond_2

    add-int v5, v14, v3

    aget v5, p14, v5

    aget v6, p14, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v10, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v5

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v5, v1, v10, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v5

    aput v5, p14, v4

    add-int/lit8 v3, v3, 0x1

    add-int v4, v4, v25

    goto :goto_3

    :cond_2
    add-int v24, v32, v31

    move-object/from16 v22, p0

    move-object/from16 v23, p14

    move-object/from16 v26, p14

    move/from16 v27, v7

    move/from16 v28, p13

    move/from16 v29, v10

    move/from16 v30, v11

    invoke-virtual/range {v22 .. v30}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2_ext([III[IIIII)V

    add-int/lit8 v3, v31, 0x1

    move/from16 v31, v3

    goto/16 :goto_0

    :cond_3
    const/16 v29, 0x1

    move-object/from16 v22, p0

    move-object/from16 v23, p14

    move/from16 v24, v32

    move/from16 v26, v25

    move/from16 v27, v33

    move-object/from16 v28, v34

    move-object/from16 v30, p14

    move/from16 v31, v14

    invoke-virtual/range {v22 .. v31}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_rebuild_CRT([IIIII[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;I[II)V

    const/4 v3, 0x0

    move/from16 v24, v32

    move/from16 v21, p2

    :goto_4
    move/from16 v0, v33

    if-ge v3, v0, :cond_4

    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move/from16 v22, p3

    move-object/from16 v23, p14

    move/from16 v26, p11

    move/from16 v27, p12

    invoke-virtual/range {v19 .. v27}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_sub_scaled([III[IIIII)V

    add-int/lit8 v3, v3, 0x1

    add-int v21, v21, p4

    add-int v24, v24, v25

    goto :goto_4

    :cond_4
    return-void
.end method

.method solve_NTRU(I[BI[BI[BI[BII[II)I
    .locals 24

    invoke-static/range {p1 .. p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->mkn(I)I

    move-result v21

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p6

    move/from16 v4, p7

    move-object/from16 v5, p8

    move/from16 v6, p9

    move-object/from16 v7, p11

    move/from16 v8, p12

    invoke-virtual/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->solve_NTRU_deepest(I[BI[BI[II)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x2

    move/from16 v0, p1

    if-gt v0, v1, :cond_1

    move/from16 v1, p1

    :goto_1
    add-int/lit8 v7, v1, -0x1

    if-lez v1, :cond_4

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p6

    move/from16 v4, p7

    move-object/from16 v5, p8

    move/from16 v6, p9

    move-object/from16 v8, p11

    move/from16 v9, p12

    invoke-virtual/range {v1 .. v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->solve_NTRU_intermediate(I[BI[BII[II)I

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move/from16 v1, p1

    :goto_2
    add-int/lit8 v7, v1, -0x1

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p6

    move/from16 v4, p7

    move-object/from16 v5, p8

    move/from16 v6, p9

    move-object/from16 v8, p11

    move/from16 v9, p12

    invoke-virtual/range {v1 .. v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->solve_NTRU_intermediate(I[BI[BII[II)I

    move-result v1

    if-nez v1, :cond_c

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p6

    move/from16 v4, p7

    move-object/from16 v5, p8

    move/from16 v6, p9

    move-object/from16 v7, p11

    move/from16 v8, p12

    invoke-virtual/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->solve_NTRU_binary_depth1(I[BI[BI[II)I

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p6

    move/from16 v4, p7

    move-object/from16 v5, p8

    move/from16 v6, p9

    move-object/from16 v7, p11

    move/from16 v8, p12

    invoke-virtual/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->solve_NTRU_binary_depth0(I[BI[BI[II)I

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    if-nez p4, :cond_5

    const/16 p5, 0x0

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 p4, v0

    :cond_5
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p11

    move/from16 v5, p12

    move/from16 v6, p10

    move/from16 v7, p1

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_big_to_small([BI[IIII)I

    move-result v1

    if-eqz v1, :cond_6

    add-int v5, p12, v21

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p11

    move/from16 v6, p10

    move/from16 v7, p1

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_big_to_small([BI[IIII)I

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_7
    add-int v12, p12, v21

    add-int v22, v12, v21

    add-int v23, v22, v21

    add-int v3, v23, v21

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->primes:Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;->PRIMES:[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    iget v8, v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->p:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_ninv31(I)I

    move-result v9

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget v7, v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->g:I

    move-object/from16 v1, p0

    move-object/from16 v2, p11

    move-object/from16 v4, p11

    move/from16 v5, p12

    move/from16 v6, p1

    invoke-virtual/range {v1 .. v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_mkgm2([II[IIIIII)V

    const/4 v1, 0x0

    :goto_3
    move/from16 v0, v21

    if-ge v1, v0, :cond_8

    add-int v2, p12, v1

    add-int v4, p5, v1

    aget-byte v4, p4, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v4

    aput v4, p11, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    :goto_4
    move/from16 v0, v21

    if-ge v1, v0, :cond_9

    add-int v2, v12, v1

    add-int v4, p7, v1

    aget-byte v4, p6, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v4

    aput v4, p11, v2

    add-int v2, v22, v1

    add-int v4, p9, v1

    aget-byte v4, p8, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v4

    aput v4, p11, v2

    add-int v2, v23, v1

    add-int v4, p3, v1

    aget-byte v4, p2, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v4

    aput v4, p11, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    move-object/from16 v10, p0

    move-object/from16 v11, p11

    move-object/from16 v13, p11

    move v14, v3

    move/from16 v15, p1

    move/from16 v16, v8

    move/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    move-object/from16 v13, p0

    move-object/from16 v14, p11

    move/from16 v15, v22

    move-object/from16 v16, p11

    move/from16 v17, v3

    move/from16 v18, p1

    move/from16 v19, v8

    move/from16 v20, v9

    invoke-virtual/range {v13 .. v20}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    move-object/from16 v13, p0

    move-object/from16 v14, p11

    move/from16 v15, v23

    move-object/from16 v16, p11

    move/from16 v17, v3

    move/from16 v18, p1

    move/from16 v19, v8

    move/from16 v20, v9

    invoke-virtual/range {v13 .. v20}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    move-object/from16 v13, p0

    move-object/from16 v14, p11

    move/from16 v15, p12

    move-object/from16 v16, p11

    move/from16 v17, v3

    move/from16 v18, p1

    move/from16 v19, v8

    move/from16 v20, v9

    invoke-virtual/range {v13 .. v20}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    const/16 v1, 0x3001

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v8, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v2

    const/4 v1, 0x0

    :goto_5
    move/from16 v0, v21

    if-ge v1, v0, :cond_b

    add-int v3, v12, v1

    aget v3, p11, v3

    add-int v4, p12, v1

    aget v4, p11, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v8, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v3

    add-int v4, v22, v1

    aget v4, p11, v4

    add-int v5, v23, v1

    aget v5, p11, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v8, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_sub(III)I

    move-result v3

    if-eq v3, v2, :cond_a

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_b
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_c
    move v1, v7

    goto/16 :goto_2

    :cond_d
    move v1, v7

    goto/16 :goto_1
.end method

.method solve_NTRU_binary_depth0(I[BI[BI[II)I
    .locals 29

    const/4 v4, 0x1

    shl-int v26, v4, p1

    shr-int/lit8 v22, v26, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->primes:Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;

    sget-object v4, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;->PRIMES:[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget v11, v4, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->p:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_ninv31(I)I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_R2(II)I

    move-result v27

    add-int v21, p7, v22

    add-int v23, v21, v22

    add-int v24, v23, v26

    add-int v6, v24, v26

    add-int v8, v6, v26

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->primes:Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;

    sget-object v4, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;->PRIMES:[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget v10, v4, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->g:I

    move-object/from16 v4, p0

    move-object/from16 v5, p6

    move-object/from16 v7, p6

    move/from16 v9, p1

    invoke-virtual/range {v4 .. v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_mkgm2([II[IIIIII)V

    const/4 v4, 0x0

    :goto_0
    move/from16 v0, v22

    if-ge v4, v0, :cond_0

    add-int v5, p7, v4

    add-int v7, p7, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_one_to_plain([II)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v7

    aput v7, p6, v5

    add-int v5, v21, v4

    add-int v7, v21, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_one_to_plain([II)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v7

    aput v7, p6, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v18, p1, -0x1

    move-object/from16 v13, p0

    move-object/from16 v14, p6

    move/from16 v15, p7

    move-object/from16 v16, p6

    move/from16 v17, v6

    move/from16 v19, v11

    move/from16 v20, v12

    invoke-virtual/range {v13 .. v20}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    add-int/lit8 v18, p1, -0x1

    move-object/from16 v13, p0

    move-object/from16 v14, p6

    move/from16 v15, v21

    move-object/from16 v16, p6

    move/from16 v17, v6

    move/from16 v19, v11

    move/from16 v20, v12

    invoke-virtual/range {v13 .. v20}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    const/4 v4, 0x0

    :goto_1
    move/from16 v0, v26

    if-ge v4, v0, :cond_1

    add-int v5, v23, v4

    add-int v7, p3, v4

    aget-byte v7, p2, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v7

    aput v7, p6, v5

    add-int v5, v24, v4

    add-int v7, p5, v4

    aget-byte v7, p4, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v7

    aput v7, p6, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v13, p0

    move-object/from16 v14, p6

    move/from16 v15, v23

    move-object/from16 v16, p6

    move/from16 v17, v6

    move/from16 v18, p1

    move/from16 v19, v11

    move/from16 v20, v12

    invoke-virtual/range {v13 .. v20}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    move-object/from16 v13, p0

    move-object/from16 v14, p6

    move/from16 v15, v24

    move-object/from16 v16, p6

    move/from16 v17, v6

    move/from16 v18, p1

    move/from16 v19, v11

    move/from16 v20, v12

    invoke-virtual/range {v13 .. v20}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    const/4 v4, 0x0

    :goto_2
    move/from16 v0, v26

    if-ge v4, v0, :cond_2

    add-int v5, v23, v4

    add-int/lit8 v5, v5, 0x0

    aget v5, p6, v5

    add-int v6, v23, v4

    add-int/lit8 v6, v6, 0x1

    aget v6, p6, v6

    add-int v7, v24, v4

    add-int/lit8 v7, v7, 0x0

    aget v7, p6, v7

    add-int v9, v24, v4

    add-int/lit8 v9, v9, 0x1

    aget v9, p6, v9

    shr-int/lit8 v10, v4, 0x1

    add-int v10, v10, p7

    aget v10, p6, v10

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v10, v1, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v10

    shr-int/lit8 v13, v4, 0x1

    add-int v13, v13, v21

    aget v13, p6, v13

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v13, v1, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v13

    add-int v14, v23, v4

    add-int/lit8 v14, v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v9

    aput v9, p6, v14

    add-int v9, v23, v4

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v7

    aput v7, p6, v9

    add-int v7, v24, v4

    add-int/lit8 v7, v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v13, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v6

    aput v6, p6, v7

    add-int v6, v24, v4

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v13, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v5

    aput v5, p6, v6

    add-int/lit8 v4, v4, 0x2

    goto :goto_2

    :cond_2
    move-object/from16 v13, p0

    move-object/from16 v14, p6

    move/from16 v15, v23

    move-object/from16 v16, p6

    move/from16 v17, v8

    move/from16 v18, p1

    move/from16 v19, v11

    move/from16 v20, v12

    invoke-virtual/range {v13 .. v20}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2([II[IIIII)V

    move-object/from16 v13, p0

    move-object/from16 v14, p6

    move/from16 v15, v24

    move-object/from16 v16, p6

    move/from16 v17, v8

    move/from16 v18, p1

    move/from16 v19, v11

    move/from16 v20, v12

    invoke-virtual/range {v13 .. v20}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2([II[IIIII)V

    add-int v28, p7, v26

    add-int v6, v28, v26

    mul-int/lit8 v4, v26, 0x2

    move-object/from16 v0, p6

    move/from16 v1, v23

    move-object/from16 v2, p6

    move/from16 v3, p7

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v8, v6, v26

    add-int v23, v8, v26

    add-int v24, v23, v26

    add-int v21, v24, v26

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->primes:Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;

    sget-object v4, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;->PRIMES:[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget v10, v4, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->g:I

    move-object/from16 v4, p0

    move-object/from16 v5, p6

    move-object/from16 v7, p6

    move/from16 v9, p1

    invoke-virtual/range {v4 .. v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_mkgm2([II[IIIIII)V

    move-object/from16 v13, p0

    move-object/from16 v14, p6

    move/from16 v15, p7

    move-object/from16 v16, p6

    move/from16 v17, v6

    move/from16 v18, p1

    move/from16 v19, v11

    move/from16 v20, v12

    invoke-virtual/range {v13 .. v20}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    move-object/from16 v13, p0

    move-object/from16 v14, p6

    move/from16 v15, v28

    move-object/from16 v16, p6

    move/from16 v17, v6

    move/from16 v18, p1

    move/from16 v19, v11

    move/from16 v20, v12

    invoke-virtual/range {v13 .. v20}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    add-int/lit8 v4, v24, 0x0

    add-int/lit8 v5, v21, 0x0

    add-int/lit8 v7, p3, 0x0

    aget-byte v7, p2, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v7

    aput v7, p6, v5

    aput v7, p6, v4

    const/4 v4, 0x1

    :goto_3
    move/from16 v0, v26

    if-ge v4, v0, :cond_3

    add-int v5, v24, v4

    add-int v7, p3, v4

    aget-byte v7, p2, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v7

    aput v7, p6, v5

    add-int v5, v21, v26

    sub-int/2addr v5, v4

    add-int v7, p3, v4

    aget-byte v7, p2, v7

    neg-int v7, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v7

    aput v7, p6, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    move-object/from16 v13, p0

    move-object/from16 v14, p6

    move/from16 v15, v24

    move-object/from16 v16, p6

    move/from16 v17, v6

    move/from16 v18, p1

    move/from16 v19, v11

    move/from16 v20, v12

    invoke-virtual/range {v13 .. v20}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    move-object/from16 v13, p0

    move-object/from16 v14, p6

    move/from16 v15, v21

    move-object/from16 v16, p6

    move/from16 v17, v6

    move/from16 v18, p1

    move/from16 v19, v11

    move/from16 v20, v12

    invoke-virtual/range {v13 .. v20}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    const/4 v4, 0x0

    :goto_4
    move/from16 v0, v26

    if-ge v4, v0, :cond_4

    add-int v5, v21, v4

    aget v5, p6, v5

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v5, v1, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v5

    add-int v7, v8, v4

    add-int v9, p7, v4

    aget v9, p6, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v9

    aput v9, p6, v7

    add-int v7, v23, v4

    add-int v9, v24, v4

    aget v9, p6, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v5

    aput v5, p6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v4, v24, 0x0

    add-int/lit8 v5, v21, 0x0

    add-int/lit8 v7, p5, 0x0

    aget-byte v7, p4, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v7

    aput v7, p6, v5

    aput v7, p6, v4

    const/4 v4, 0x1

    :goto_5
    move/from16 v0, v26

    if-ge v4, v0, :cond_5

    add-int v5, v24, v4

    add-int v7, p5, v4

    aget-byte v7, p4, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v7

    aput v7, p6, v5

    add-int v5, v21, v26

    sub-int/2addr v5, v4

    add-int v7, p5, v4

    aget-byte v7, p4, v7

    neg-int v7, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v7

    aput v7, p6, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_5
    move-object/from16 v13, p0

    move-object/from16 v14, p6

    move/from16 v15, v24

    move-object/from16 v16, p6

    move/from16 v17, v6

    move/from16 v18, p1

    move/from16 v19, v11

    move/from16 v20, v12

    invoke-virtual/range {v13 .. v20}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    move-object/from16 v13, p0

    move-object/from16 v14, p6

    move/from16 v15, v21

    move-object/from16 v16, p6

    move/from16 v17, v6

    move/from16 v18, p1

    move/from16 v19, v11

    move/from16 v20, v12

    invoke-virtual/range {v13 .. v20}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    const/4 v4, 0x0

    :goto_6
    move/from16 v0, v26

    if-ge v4, v0, :cond_6

    add-int v5, v21, v4

    aget v5, p6, v5

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v5, v1, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v5

    add-int v7, v8, v4

    add-int v9, v8, v4

    aget v9, p6, v9

    add-int v10, v28, v4

    aget v10, p6, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v10, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_add(III)I

    move-result v9

    aput v9, p6, v7

    add-int v7, v23, v4

    add-int v9, v23, v4

    aget v9, p6, v9

    add-int v10, v24, v4

    aget v10, p6, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v10, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v5, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_add(III)I

    move-result v5

    aput v5, p6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->primes:Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;

    sget-object v4, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;->PRIMES:[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget v0, v4, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->g:I

    move/from16 v19, v0

    move-object/from16 v13, p0

    move-object/from16 v14, p6

    move v15, v6

    move-object/from16 v16, p6

    move/from16 v17, v24

    move/from16 v18, p1

    move/from16 v20, v11

    move/from16 v21, v12

    invoke-virtual/range {v13 .. v21}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_mkgm2([II[IIIIII)V

    move-object/from16 v13, p0

    move-object/from16 v14, p6

    move v15, v8

    move-object/from16 v16, p6

    move/from16 v17, v24

    move/from16 v18, p1

    move/from16 v19, v11

    move/from16 v20, v12

    invoke-virtual/range {v13 .. v20}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2([II[IIIII)V

    move-object/from16 v13, p0

    move-object/from16 v14, p6

    move/from16 v15, v23

    move-object/from16 v16, p6

    move/from16 v17, v24

    move/from16 v18, p1

    move/from16 v19, v11

    move/from16 v20, v12

    invoke-virtual/range {v13 .. v20}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2([II[IIIII)V

    const/4 v4, 0x0

    :goto_7
    move/from16 v0, v26

    if-ge v4, v0, :cond_7

    add-int v5, v6, v4

    add-int v7, v8, v4

    aget v7, p6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_norm(II)I

    move-result v7

    aput v7, p6, v5

    add-int v5, v8, v4

    add-int v7, v23, v4

    aget v7, p6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_norm(II)I

    move-result v7

    aput v7, p6, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_7
    mul-int/lit8 v4, v26, 0x3

    new-array v14, v4, [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const/4 v4, 0x0

    add-int v17, v4, v26

    add-int v5, v17, v26

    const/4 v4, 0x0

    :goto_8
    move/from16 v0, v26

    if-ge v4, v0, :cond_8

    add-int v7, v5, v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v10, v8, v4

    aget v10, p6, v10

    int-to-long v0, v10

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v9, v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v9

    aput-object v9, v14, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move/from16 v0, p1

    invoke-virtual {v4, v14, v5, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move/from16 v0, v17

    move/from16 v1, v22

    invoke-static {v14, v5, v14, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v15, v17, v22

    const/4 v4, 0x0

    :goto_9
    move/from16 v0, v26

    if-ge v4, v0, :cond_9

    add-int v5, v15, v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v8, v6, v4

    aget v8, p6, v8

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v7

    aput-object v7, v14, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move/from16 v0, p1

    invoke-virtual {v4, v14, v15, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v16, v14

    move/from16 v18, p1

    invoke-virtual/range {v13 .. v18}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_div_autoadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move/from16 v0, p1

    invoke-virtual {v4, v14, v15, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->iFFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    const/4 v4, 0x0

    :goto_a
    move/from16 v0, v26

    if-ge v4, v0, :cond_a

    add-int v5, v6, v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v8, v15, v4

    aget-object v8, v14, v8

    invoke-virtual {v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_rint(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)J

    move-result-wide v8

    long-to-int v7, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v7

    aput v7, p6, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_a
    add-int v15, v6, v26

    add-int v17, v15, v26

    add-int v5, v17, v26

    add-int v7, v5, v26

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->primes:Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;

    sget-object v4, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;->PRIMES:[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;

    const/4 v8, 0x0

    aget-object v4, v4, v8

    iget v0, v4, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->g:I

    move/from16 v19, v0

    move-object/from16 v13, p0

    move-object/from16 v14, p6

    move-object/from16 v16, p6

    move/from16 v18, p1

    move/from16 v20, v11

    move/from16 v21, v12

    invoke-virtual/range {v13 .. v21}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_mkgm2([II[IIIIII)V

    const/4 v4, 0x0

    :goto_b
    move/from16 v0, v26

    if-ge v4, v0, :cond_b

    add-int v8, v5, v4

    add-int v9, p3, v4

    aget-byte v9, p2, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v9

    aput v9, p6, v8

    add-int v8, v7, v4

    add-int v9, p5, v4

    aget-byte v9, p4, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v9

    aput v9, p6, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_b
    move-object/from16 v18, p0

    move-object/from16 v19, p6

    move/from16 v20, v6

    move-object/from16 v21, p6

    move/from16 v22, v15

    move/from16 v23, p1

    move/from16 v24, v11

    move/from16 v25, v12

    invoke-virtual/range {v18 .. v25}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    move-object/from16 v18, p0

    move-object/from16 v19, p6

    move/from16 v20, v5

    move-object/from16 v21, p6

    move/from16 v22, v15

    move/from16 v23, p1

    move/from16 v24, v11

    move/from16 v25, v12

    invoke-virtual/range {v18 .. v25}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    move-object/from16 v18, p0

    move-object/from16 v19, p6

    move/from16 v20, v7

    move-object/from16 v21, p6

    move/from16 v22, v15

    move/from16 v23, p1

    move/from16 v24, v11

    move/from16 v25, v12

    invoke-virtual/range {v18 .. v25}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    const/4 v4, 0x0

    :goto_c
    move/from16 v0, v26

    if-ge v4, v0, :cond_c

    add-int v8, v6, v4

    aget v8, p6, v8

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v8, v1, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v8

    add-int v9, p7, v4

    add-int v10, p7, v4

    aget v10, p6, v10

    add-int v13, v5, v4

    aget v13, p6, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v13, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v13, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_sub(III)I

    move-result v10

    aput v10, p6, v9

    add-int v9, v28, v4

    add-int v10, v28, v4

    aget v10, p6, v10

    add-int v13, v7, v4

    aget v13, p6, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v13, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v8, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_sub(III)I

    move-result v8

    aput v8, p6, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_c
    move-object/from16 v5, p0

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p6

    move/from16 v9, v17

    move/from16 v10, p1

    invoke-virtual/range {v5 .. v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2([II[IIIII)V

    move-object/from16 v5, p0

    move-object/from16 v6, p6

    move/from16 v7, v28

    move-object/from16 v8, p6

    move/from16 v9, v17

    move/from16 v10, p1

    invoke-virtual/range {v5 .. v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2([II[IIIII)V

    const/4 v4, 0x0

    :goto_d
    move/from16 v0, v26

    if-ge v4, v0, :cond_d

    add-int v5, p7, v4

    add-int v6, p7, v4

    aget v6, p6, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_norm(II)I

    move-result v6

    aput v6, p6, v5

    add-int v5, v28, v4

    add-int v6, v28, v4

    aget v6, p6, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_norm(II)I

    move-result v6

    aput v6, p6, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_d
    const/4 v4, 0x1

    return v4
.end method

.method solve_NTRU_binary_depth1(I[BI[BI[II)I
    .locals 36

    const/4 v4, 0x1

    const/4 v5, 0x1

    shl-int v26, v5, p1

    sub-int v27, p1, v4

    const/4 v5, 0x1

    shl-int v28, v5, v27

    shr-int/lit8 v29, v28, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->MAX_BL_SMALL:[I

    aget v30, v5, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->MAX_BL_SMALL:[I

    const/4 v6, 0x2

    aget v7, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->MAX_BL_LARGE:[I

    aget v31, v5, v4

    mul-int v4, v7, v29

    add-int v22, p7, v4

    mul-int v4, v7, v29

    add-int v25, v22, v4

    mul-int v4, v31, v28

    add-int v32, v25, v4

    const/4 v4, 0x0

    move/from16 v24, v4

    :goto_0
    move/from16 v0, v24

    move/from16 v1, v31

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->primes:Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;

    sget-object v4, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;->PRIMES:[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;

    aget-object v4, v4, v24

    iget v8, v4, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->p:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_ninv31(I)I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_R2(II)I

    move-result v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_Rx(IIII)I

    move-result v11

    const/4 v12, 0x0

    add-int v5, v25, v24

    add-int v4, v32, v24

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v14, v22

    move/from16 v6, p7

    move/from16 v23, v12

    :goto_1
    move/from16 v0, v23

    move/from16 v1, v29

    if-ge v0, v1, :cond_0

    move-object/from16 v4, p0

    move-object/from16 v5, p6

    invoke-virtual/range {v4 .. v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_mod_small_signed([IIIIIII)I

    move-result v4

    aput v4, p6, v21

    move-object/from16 v12, p0

    move-object/from16 v13, p6

    move v15, v7

    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v11

    invoke-virtual/range {v12 .. v19}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_mod_small_signed([IIIIIII)I

    move-result v4

    aput v4, p6, v20

    add-int/lit8 v12, v23, 0x1

    add-int/2addr v6, v7

    add-int/2addr v14, v7

    add-int v5, v21, v31

    add-int v4, v20, v31

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v23, v12

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v24, 0x1

    move/from16 v24, v4

    goto :goto_0

    :cond_1
    mul-int v4, v31, v28

    move-object/from16 v0, p6

    move/from16 v1, v25

    move-object/from16 v2, p6

    move/from16 v3, p7

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int v4, v31, v28

    add-int v4, v4, p7

    mul-int v5, v31, v28

    move-object/from16 v0, p6

    move/from16 v1, v32

    move-object/from16 v2, p6

    invoke-static {v0, v1, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int v4, v31, v28

    add-int v32, p7, v4

    mul-int v4, v31, v28

    add-int v33, v32, v4

    mul-int v4, v30, v28

    add-int v34, v33, v4

    mul-int v4, v30, v28

    add-int v6, v34, v4

    const/4 v4, 0x0

    move/from16 v25, v4

    :goto_2
    move/from16 v0, v25

    move/from16 v1, v31

    if-ge v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->primes:Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;

    sget-object v4, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;->PRIMES:[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;

    aget-object v4, v4, v25

    iget v11, v4, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->p:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_ninv31(I)I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_R2(II)I

    move-result v35

    add-int v8, v6, v26

    add-int v15, v8, v28

    add-int v24, v15, v26

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->primes:Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;

    sget-object v4, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;->PRIMES:[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;

    aget-object v4, v4, v25

    iget v10, v4, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->g:I

    move-object/from16 v4, p0

    move-object/from16 v5, p6

    move-object/from16 v7, p6

    move/from16 v9, p1

    invoke-virtual/range {v4 .. v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_mkgm2([II[IIIIII)V

    const/4 v4, 0x0

    :goto_3
    move/from16 v0, v26

    if-ge v4, v0, :cond_2

    add-int v5, v15, v4

    add-int v7, p3, v4

    aget-byte v7, p2, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v7

    aput v7, p6, v5

    add-int v5, v24, v4

    add-int v7, p5, v4

    aget-byte v7, p4, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_set(II)I

    move-result v7

    aput v7, p6, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_2
    move-object/from16 v13, p0

    move-object/from16 v14, p6

    move-object/from16 v16, p6

    move/from16 v17, v6

    move/from16 v18, p1

    move/from16 v19, v11

    move/from16 v20, v12

    invoke-virtual/range {v13 .. v20}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    move-object/from16 v16, p0

    move-object/from16 v17, p6

    move/from16 v18, v24

    move-object/from16 v19, p6

    move/from16 v20, v6

    move/from16 v21, p1

    move/from16 v22, v11

    move/from16 v23, v12

    invoke-virtual/range {v16 .. v23}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    move/from16 v16, p1

    :goto_4
    move/from16 v0, v16

    move/from16 v1, v27

    if-le v0, v1, :cond_3

    move-object/from16 v13, p0

    move-object/from16 v14, p6

    move/from16 v17, v11

    move/from16 v18, v12

    move/from16 v19, v35

    invoke-virtual/range {v13 .. v19}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_poly_rec_res([IIIIII)V

    move-object/from16 v17, p0

    move-object/from16 v18, p6

    move/from16 v19, v24

    move/from16 v20, v16

    move/from16 v21, v11

    move/from16 v22, v12

    move/from16 v23, v35

    invoke-virtual/range {v17 .. v23}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_poly_rec_res([IIIIII)V

    add-int/lit8 v16, v16, -0x1

    goto :goto_4

    :cond_3
    add-int v4, v6, v28

    move-object/from16 v0, p6

    move-object/from16 v1, p6

    move/from16 v2, v28

    invoke-static {v0, v8, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v8, v6, v28

    add-int v4, v8, v28

    move-object/from16 v0, p6

    move-object/from16 v1, p6

    move/from16 v2, v28

    invoke-static {v0, v15, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v15, v8, v28

    add-int v4, v15, v28

    move-object/from16 v0, p6

    move/from16 v1, v24

    move-object/from16 v2, p6

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v4, v15, v28

    move v5, v15

    add-int v15, v4, v28

    add-int v24, v15, v29

    const/4 v7, 0x0

    add-int v10, p7, v25

    add-int v9, v32, v25

    :goto_5
    move/from16 v0, v29

    if-ge v7, v0, :cond_4

    add-int v13, v15, v7

    aget v14, p6, v10

    aput v14, p6, v13

    add-int v13, v24, v7

    aget v14, p6, v9

    aput v14, p6, v13

    add-int/lit8 v7, v7, 0x1

    add-int v10, v10, v31

    add-int v9, v9, v31

    goto :goto_5

    :cond_4
    add-int/lit8 v18, v27, -0x1

    move-object/from16 v13, p0

    move-object/from16 v14, p6

    move-object/from16 v16, p6

    move/from16 v17, v6

    move/from16 v19, v11

    move/from16 v20, v12

    invoke-virtual/range {v13 .. v20}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    add-int/lit8 v21, v27, -0x1

    move-object/from16 v16, p0

    move-object/from16 v17, p6

    move/from16 v18, v24

    move-object/from16 v19, p6

    move/from16 v20, v6

    move/from16 v22, v11

    move/from16 v23, v12

    invoke-virtual/range {v16 .. v23}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    const/4 v7, 0x0

    add-int v10, p7, v25

    add-int v9, v32, v25

    :goto_6
    move/from16 v0, v29

    if-ge v7, v0, :cond_5

    shl-int/lit8 v13, v7, 0x1

    add-int/2addr v13, v5

    add-int/lit8 v13, v13, 0x0

    aget v13, p6, v13

    shl-int/lit8 v14, v7, 0x1

    add-int/2addr v14, v5

    add-int/lit8 v14, v14, 0x1

    aget v14, p6, v14

    shl-int/lit8 v16, v7, 0x1

    add-int v16, v16, v4

    add-int/lit8 v16, v16, 0x0

    aget v16, p6, v16

    shl-int/lit8 v17, v7, 0x1

    add-int v17, v17, v4

    add-int/lit8 v17, v17, 0x1

    aget v17, p6, v17

    add-int v18, v15, v7

    aget v18, p6, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v18

    add-int v19, v24, v7

    aget v19, p6, v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v19

    add-int/lit8 v20, v10, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v17

    aput v17, p6, v20

    add-int v17, v10, v31

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v16

    aput v16, p6, v17

    add-int/lit8 v16, v9, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v14, v1, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v14

    aput v14, p6, v16

    add-int v14, v9, v31

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v13, v1, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v13

    aput v13, p6, v14

    add-int/lit8 v7, v7, 0x1

    shl-int/lit8 v13, v31, 0x1

    add-int/2addr v10, v13

    shl-int/lit8 v13, v31, 0x1

    add-int/2addr v9, v13

    goto :goto_6

    :cond_5
    add-int v15, p7, v25

    move-object/from16 v13, p0

    move-object/from16 v14, p6

    move/from16 v16, v31

    move-object/from16 v17, p6

    move/from16 v18, v8

    move/from16 v19, v27

    move/from16 v20, v11

    move/from16 v21, v12

    invoke-virtual/range {v13 .. v21}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2_ext([III[IIIII)V

    add-int v15, v32, v25

    move-object/from16 v13, p0

    move-object/from16 v14, p6

    move/from16 v16, v31

    move-object/from16 v17, p6

    move/from16 v18, v8

    move/from16 v19, v27

    move/from16 v20, v11

    move/from16 v21, v12

    invoke-virtual/range {v13 .. v21}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2_ext([III[IIIII)V

    move/from16 v0, v25

    move/from16 v1, v30

    if-ge v0, v1, :cond_6

    move-object/from16 v13, p0

    move-object/from16 v14, p6

    move v15, v5

    move-object/from16 v16, p6

    move/from16 v17, v8

    move/from16 v18, v27

    move/from16 v19, v11

    move/from16 v20, v12

    invoke-virtual/range {v13 .. v20}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2([II[IIIII)V

    move-object/from16 v13, p0

    move-object/from16 v14, p6

    move v15, v4

    move-object/from16 v16, p6

    move/from16 v17, v8

    move/from16 v18, v27

    move/from16 v19, v11

    move/from16 v20, v12

    invoke-virtual/range {v13 .. v20}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2([II[IIIII)V

    const/4 v7, 0x0

    add-int v9, v33, v25

    add-int v8, v34, v25

    :goto_7
    move/from16 v0, v28

    if-ge v7, v0, :cond_6

    add-int v10, v5, v7

    aget v10, p6, v10

    aput v10, p6, v9

    add-int v10, v4, v7

    aget v10, p6, v10

    aput v10, p6, v8

    add-int/lit8 v7, v7, 0x1

    add-int v9, v9, v30

    add-int v8, v8, v30

    goto :goto_7

    :cond_6
    add-int/lit8 v4, v25, 0x1

    move/from16 v25, v4

    goto/16 :goto_2

    :cond_7
    shl-int/lit8 v12, v28, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->primes:Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;

    sget-object v13, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;->PRIMES:[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;

    const/4 v14, 0x1

    move-object/from16 v7, p0

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, v31

    move/from16 v11, v31

    move-object/from16 v15, p6

    move/from16 v16, v6

    invoke-virtual/range {v7 .. v16}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_rebuild_CRT([IIIII[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;I[II)V

    shl-int/lit8 v12, v28, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->primes:Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;

    sget-object v13, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;->PRIMES:[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;

    const/4 v14, 0x1

    move-object/from16 v7, p0

    move-object/from16 v8, p6

    move/from16 v9, v33

    move/from16 v10, v30

    move/from16 v11, v30

    move-object/from16 v15, p6

    move/from16 v16, v6

    invoke-virtual/range {v7 .. v16}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_rebuild_CRT([IIIII[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;I[II)V

    move/from16 v0, v28

    new-array v5, v0, [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move/from16 v0, v28

    new-array v0, v0, [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-object/from16 v22, v0

    const/4 v6, 0x0

    move-object/from16 v4, p0

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, v31

    move/from16 v10, v31

    move/from16 v11, v27

    invoke-virtual/range {v4 .. v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_big_to_fp([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[IIIII)V

    const/4 v8, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, v22

    move-object/from16 v9, p6

    move/from16 v10, v32

    move/from16 v11, v31

    move/from16 v12, v31

    move/from16 v13, v27

    invoke-virtual/range {v6 .. v13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_big_to_fp([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[IIIII)V

    mul-int/lit8 v4, v30, 0x2

    mul-int v4, v4, v28

    move-object/from16 v0, p6

    move/from16 v1, v33

    move-object/from16 v2, p6

    move/from16 v3, p7

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int v4, v30, v28

    add-int v4, v4, p7

    move/from16 v0, v28

    new-array v7, v0, [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move/from16 v0, v28

    new-array v0, v0, [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-object/from16 v17, v0

    const/4 v8, 0x0

    move-object/from16 v6, p0

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, v30

    move/from16 v12, v30

    move/from16 v13, v27

    invoke-virtual/range {v6 .. v13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_big_to_fp([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[IIIII)V

    const/4 v10, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, v17

    move-object/from16 v11, p6

    move v12, v4

    move/from16 v13, v30

    move/from16 v14, v30

    move/from16 v15, v27

    invoke-virtual/range {v8 .. v15}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_big_to_fp([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[IIIII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    const/4 v6, 0x0

    move/from16 v0, v27

    invoke-virtual {v4, v5, v6, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    const/4 v6, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v4, v0, v6, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    const/4 v6, 0x0

    move/from16 v0, v27

    invoke-virtual {v4, v7, v6, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    const/4 v6, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v4, v0, v6, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move/from16 v0, v28

    new-array v9, v0, [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    shr-int/lit8 v4, v28, 0x1

    new-array v4, v4, [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object v11, v5

    move-object/from16 v13, v22

    move-object v15, v7

    move/from16 v19, v27

    invoke-virtual/range {v8 .. v19}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_add_muladj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object v13, v4

    move-object v15, v7

    move/from16 v19, v27

    invoke-virtual/range {v12 .. v19}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_invnorm2_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v11, v4

    move/from16 v13, v27

    invoke-virtual/range {v8 .. v13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_autoadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    const/4 v6, 0x0

    move/from16 v0, v27

    invoke-virtual {v4, v9, v6, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->iFFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    const/4 v4, 0x0

    :goto_8
    move/from16 v0, v28

    if-ge v4, v0, :cond_a

    aget-object v6, v9, v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_ptwo63m1:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v8, v6, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_lt(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Z

    move-result v8

    if-eqz v8, :cond_8

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mtwo63m1:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v8, v10, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_lt(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Z

    move-result v8

    if-nez v8, :cond_9

    :cond_8
    const/4 v4, 0x0

    :goto_9
    return v4

    :cond_9
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v10, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_rint(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    aput-object v6, v9, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    const/4 v6, 0x0

    move/from16 v0, v27

    invoke-virtual {v4, v9, v6, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    const/4 v8, 0x0

    const/4 v10, 0x0

    move/from16 v11, v27

    invoke-virtual/range {v6 .. v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v16, v0

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v19, v9

    move/from16 v21, v27

    invoke-virtual/range {v16 .. v21}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move/from16 v9, v27

    invoke-virtual/range {v4 .. v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_sub([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object/from16 v15, v22

    move/from16 v19, v27

    invoke-virtual/range {v14 .. v19}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_sub([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    const/4 v6, 0x0

    move/from16 v0, v27

    invoke-virtual {v4, v5, v6, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->iFFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    const/4 v6, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v4, v0, v6, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->iFFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    add-int v6, p7, v28

    const/4 v4, 0x0

    :goto_a
    move/from16 v0, v28

    if-ge v4, v0, :cond_b

    add-int v7, p7, v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    aget-object v9, v5, v4

    invoke-virtual {v8, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_rint(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)J

    move-result-wide v8

    long-to-int v8, v8

    aput v8, p6, v7

    add-int v7, v6, v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    aget-object v9, v22, v4

    invoke-virtual {v8, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_rint(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)J

    move-result-wide v8

    long-to-int v8, v8

    aput v8, p6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_b
    const/4 v4, 0x1

    goto/16 :goto_9
.end method

.method solve_NTRU_deepest(I[BI[BI[II)I
    .locals 19

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->MAX_BL_SMALL:[I

    aget v15, v3, p1

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->primes:Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;

    sget-object v13, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;->PRIMES:[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;

    add-int v18, p7, v15

    add-int v5, v18, v15

    add-int v14, v5, v15

    add-int v17, v14, v15

    const/4 v12, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p6

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p1

    move/from16 v11, p1

    invoke-virtual/range {v3 .. v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->make_fg([II[BI[BIIII)V

    const/4 v8, 0x2

    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p6

    move v6, v15

    move v7, v15

    move-object v9, v13

    move-object/from16 v11, p6

    move/from16 v12, v17

    invoke-virtual/range {v3 .. v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_rebuild_CRT([IIIII[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;I[II)V

    move-object/from16 v6, p0

    move-object/from16 v7, p6

    move/from16 v8, v18

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p6

    move v12, v5

    move-object/from16 v13, p6

    move-object/from16 v16, p6

    invoke-virtual/range {v6 .. v17}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_bezout([II[II[II[III[II)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    const/16 v3, 0x3001

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move/from16 v2, p7

    invoke-virtual {v0, v1, v2, v15, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_mul_small([IIII)I

    move-result v4

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v15, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_mul_small([IIII)I

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method solve_NTRU_intermediate(I[BI[BII[II)I
    .locals 62

    sub-int v44, p1, p6

    const/4 v6, 0x1

    shl-int v61, v6, v44

    shr-int/lit8 v36, v61, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->MAX_BL_SMALL:[I

    aget v25, v6, p6

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->MAX_BL_SMALL:[I

    add-int/lit8 v7, p6, 0x1

    aget v17, v6, v7

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->MAX_BL_LARGE:[I

    aget v35, v6, p6

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->primes:Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;

    sget-object v38, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrimeList;->PRIMES:[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;

    mul-int v6, v17, v36

    add-int v6, v6, p8

    mul-int v7, v17, v36

    add-int v8, v6, v7

    const/4 v15, 0x1

    move-object/from16 v6, p0

    move-object/from16 v7, p7

    move-object/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p1

    move/from16 v14, p6

    invoke-virtual/range {v6 .. v15}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->make_fg([II[BI[BIIII)V

    mul-int v6, v61, v35

    add-int v47, p8, v6

    mul-int v6, v61, v35

    add-int v37, v47, v6

    mul-int/lit8 v6, v61, 0x2

    mul-int v6, v6, v25

    move-object/from16 v0, p7

    move-object/from16 v1, p7

    move/from16 v2, v37

    invoke-static {v0, v8, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int v6, v25, v61

    add-int v51, v37, v6

    mul-int v6, v25, v61

    add-int v30, v51, v6

    mul-int/lit8 v6, v36, 0x2

    mul-int v6, v6, v17

    move-object/from16 v0, p7

    move/from16 v1, p8

    move-object/from16 v2, p7

    move/from16 v3, v30

    invoke-static {v0, v1, v2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int v6, v36, v17

    add-int v24, v30, v6

    const/4 v6, 0x0

    move/from16 v27, v6

    :goto_0
    move/from16 v0, v27

    move/from16 v1, v35

    if-ge v0, v1, :cond_1

    aget-object v6, v38, v27

    iget v10, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->p:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_ninv31(I)I

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_R2(II)I

    move-result v12

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v10, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_Rx(IIII)I

    move-result v13

    const/4 v9, 0x0

    add-int v7, p8, v27

    add-int v6, v47, v27

    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v16, v24

    move/from16 v8, v30

    move/from16 v26, v9

    :goto_1
    move/from16 v0, v26

    move/from16 v1, v36

    if-ge v0, v1, :cond_0

    move-object/from16 v6, p0

    move-object/from16 v7, p7

    move/from16 v9, v17

    invoke-virtual/range {v6 .. v13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_mod_small_signed([IIIIIII)I

    move-result v6

    aput v6, p7, v23

    move-object/from16 v14, p0

    move-object/from16 v15, p7

    move/from16 v18, v10

    move/from16 v19, v11

    move/from16 v20, v12

    move/from16 v21, v13

    invoke-virtual/range {v14 .. v21}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_mod_small_signed([IIIIIII)I

    move-result v6

    aput v6, p7, v22

    add-int/lit8 v9, v26, 0x1

    add-int v8, v8, v17

    add-int v16, v16, v17

    add-int v7, v23, v35

    add-int v6, v22, v35

    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v26, v9

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v27, 0x1

    move/from16 v27, v6

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    move/from16 v34, v6

    :goto_2
    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_8

    aget-object v6, v38, v34

    iget v0, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->p:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_ninv31(I)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_R2(II)I

    move-result v20

    move/from16 v0, v34

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    const/4 v13, 0x1

    move-object/from16 v6, p0

    move-object/from16 v7, p7

    move/from16 v8, v37

    move/from16 v9, v25

    move/from16 v10, v25

    move/from16 v11, v61

    move-object/from16 v12, v38

    move-object/from16 v14, p7

    move/from16 v15, v30

    invoke-virtual/range {v6 .. v15}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_rebuild_CRT([IIIII[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;I[II)V

    const/4 v13, 0x1

    move-object/from16 v6, p0

    move-object/from16 v7, p7

    move/from16 v8, v51

    move/from16 v9, v25

    move/from16 v10, v25

    move/from16 v11, v61

    move-object/from16 v12, v38

    move-object/from16 v14, p7

    move/from16 v15, v30

    invoke-virtual/range {v6 .. v15}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_rebuild_CRT([IIIII[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;I[II)V

    :cond_2
    add-int v10, v30, v61

    add-int v39, v10, v61

    add-int v40, v39, v61

    aget-object v6, v38, v34

    iget v12, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->g:I

    move-object/from16 v6, p0

    move-object/from16 v7, p7

    move/from16 v8, v30

    move-object/from16 v9, p7

    move/from16 v11, v44

    move/from16 v13, v18

    move/from16 v14, v19

    invoke-virtual/range {v6 .. v14}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_mkgm2([II[IIIIII)V

    move/from16 v0, v34

    move/from16 v1, v25

    if-ge v0, v1, :cond_4

    const/4 v6, 0x0

    add-int v8, v37, v34

    add-int v7, v51, v34

    :goto_3
    move/from16 v0, v61

    if-ge v6, v0, :cond_3

    add-int v9, v39, v6

    aget v11, p7, v8

    aput v11, p7, v9

    add-int v9, v40, v6

    aget v11, p7, v7

    aput v11, p7, v9

    add-int/lit8 v6, v6, 0x1

    add-int v8, v8, v25

    add-int v7, v7, v25

    goto :goto_3

    :cond_3
    add-int v13, v37, v34

    move-object/from16 v11, p0

    move-object/from16 v12, p7

    move/from16 v14, v25

    move-object/from16 v15, p7

    move/from16 v16, v10

    move/from16 v17, v44

    invoke-virtual/range {v11 .. v19}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2_ext([III[IIIII)V

    add-int v13, v51, v34

    move-object/from16 v11, p0

    move-object/from16 v12, p7

    move/from16 v14, v25

    move-object/from16 v15, p7

    move/from16 v16, v10

    move/from16 v17, v44

    invoke-virtual/range {v11 .. v19}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2_ext([III[IIIII)V

    :goto_4
    add-int v14, v40, v61

    add-int v28, v14, v36

    const/4 v6, 0x0

    add-int v8, p8, v34

    add-int v7, v47, v34

    :goto_5
    move/from16 v0, v36

    if-ge v6, v0, :cond_6

    add-int v9, v14, v6

    aget v11, p7, v8

    aput v11, p7, v9

    add-int v9, v28, v6

    aget v11, p7, v7

    aput v11, p7, v9

    add-int/lit8 v6, v6, 0x1

    add-int v8, v8, v35

    add-int v7, v7, v35

    goto :goto_5

    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_Rx(IIII)I

    move-result v21

    const/4 v6, 0x0

    move/from16 v24, v51

    move/from16 v16, v37

    :goto_6
    move/from16 v0, v61

    if-ge v6, v0, :cond_5

    add-int v7, v39, v6

    move-object/from16 v14, p0

    move-object/from16 v15, p7

    move/from16 v17, v25

    invoke-virtual/range {v14 .. v21}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_mod_small_signed([IIIIIII)I

    move-result v8

    aput v8, p7, v7

    add-int v7, v40, v6

    move-object/from16 v22, p0

    move-object/from16 v23, p7

    move/from16 v26, v18

    move/from16 v27, v19

    move/from16 v28, v20

    move/from16 v29, v21

    invoke-virtual/range {v22 .. v29}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_mod_small_signed([IIIIIII)I

    move-result v8

    aput v8, p7, v7

    add-int/lit8 v6, v6, 0x1

    add-int v16, v16, v25

    add-int v24, v24, v25

    goto :goto_6

    :cond_5
    move-object/from16 v12, p0

    move-object/from16 v13, p7

    move/from16 v14, v39

    move-object/from16 v15, p7

    move/from16 v16, v30

    move/from16 v17, v44

    invoke-virtual/range {v12 .. v19}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    move-object/from16 v12, p0

    move-object/from16 v13, p7

    move/from16 v14, v40

    move-object/from16 v15, p7

    move/from16 v16, v30

    move/from16 v17, v44

    invoke-virtual/range {v12 .. v19}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    goto :goto_4

    :cond_6
    add-int/lit8 v17, v44, -0x1

    move-object/from16 v12, p0

    move-object/from16 v13, p7

    move-object/from16 v15, p7

    move/from16 v16, v30

    invoke-virtual/range {v12 .. v19}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    add-int/lit8 v31, v44, -0x1

    move-object/from16 v26, p0

    move-object/from16 v27, p7

    move-object/from16 v29, p7

    move/from16 v32, v18

    move/from16 v33, v19

    invoke-virtual/range {v26 .. v33}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_NTT2([II[IIIII)V

    const/4 v6, 0x0

    add-int v8, p8, v34

    add-int v7, v47, v34

    :goto_7
    move/from16 v0, v36

    if-ge v6, v0, :cond_7

    shl-int/lit8 v9, v6, 0x1

    add-int v9, v9, v39

    add-int/lit8 v9, v9, 0x0

    aget v9, p7, v9

    shl-int/lit8 v11, v6, 0x1

    add-int v11, v11, v39

    add-int/lit8 v11, v11, 0x1

    aget v11, p7, v11

    shl-int/lit8 v12, v6, 0x1

    add-int v12, v12, v40

    add-int/lit8 v12, v12, 0x0

    aget v12, p7, v12

    shl-int/lit8 v13, v6, 0x1

    add-int v13, v13, v40

    add-int/lit8 v13, v13, 0x1

    aget v13, p7, v13

    add-int v15, v14, v6

    aget v15, p7, v15

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v15, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v15

    add-int v16, v28, v6

    aget v16, p7, v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v20

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v16

    add-int/lit8 v17, v8, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v13, v15, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v13

    aput v13, p7, v17

    add-int v13, v8, v35

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v12, v15, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v12

    aput v12, p7, v13

    add-int/lit8 v12, v7, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v11, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v11

    aput v11, p7, v12

    add-int v11, v7, v35

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v9, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v9

    aput v9, p7, v11

    add-int/lit8 v6, v6, 0x1

    shl-int/lit8 v9, v35, 0x1

    add-int/2addr v8, v9

    shl-int/lit8 v9, v35, 0x1

    add-int/2addr v7, v9

    goto/16 :goto_7

    :cond_7
    add-int v13, p8, v34

    move-object/from16 v11, p0

    move-object/from16 v12, p7

    move/from16 v14, v35

    move-object/from16 v15, p7

    move/from16 v16, v10

    move/from16 v17, v44

    invoke-virtual/range {v11 .. v19}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2_ext([III[IIIII)V

    add-int v13, v47, v34

    move-object/from16 v11, p0

    move-object/from16 v12, p7

    move/from16 v14, v35

    move-object/from16 v15, p7

    move/from16 v16, v10

    move/from16 v17, v44

    invoke-virtual/range {v11 .. v19}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_iNTT2_ext([III[IIIII)V

    add-int/lit8 v6, v34, 0x1

    move/from16 v34, v6

    goto/16 :goto_2

    :cond_8
    const/4 v13, 0x1

    move-object/from16 v6, p0

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, v35

    move/from16 v10, v35

    move/from16 v11, v61

    move-object/from16 v12, v38

    move-object/from16 v14, p7

    move/from16 v15, v30

    invoke-virtual/range {v6 .. v15}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_rebuild_CRT([IIIII[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;I[II)V

    const/4 v13, 0x1

    move-object/from16 v6, p0

    move-object/from16 v7, p7

    move/from16 v8, v47

    move/from16 v9, v35

    move/from16 v10, v35

    move/from16 v11, v61

    move-object/from16 v12, v38

    move-object/from16 v14, p7

    move/from16 v15, v30

    invoke-virtual/range {v6 .. v15}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_rebuild_CRT([IIIII[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;I[II)V

    move/from16 v0, v61

    new-array v0, v0, [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-object/from16 v27, v0

    move/from16 v0, v61

    new-array v0, v0, [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-object/from16 v28, v0

    move/from16 v0, v61

    new-array v0, v0, [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-object/from16 v20, v0

    move/from16 v0, v61

    new-array v7, v0, [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    shr-int/lit8 v6, v61, 0x1

    new-array v0, v6, [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-object/from16 v18, v0

    move/from16 v0, v61

    new-array v0, v0, [I

    move-object/from16 v40, v0

    const/16 v6, 0xa

    move/from16 v0, v25

    if-le v0, v6, :cond_9

    const/16 v24, 0xa

    :goto_8
    const/16 v21, 0x0

    add-int v6, v37, v25

    sub-int v23, v6, v24

    move-object/from16 v19, p0

    move-object/from16 v22, p7

    move/from16 v26, v44

    invoke-virtual/range {v19 .. v26}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_big_to_fp([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[IIIII)V

    const/4 v8, 0x0

    add-int v6, v51, v25

    sub-int v10, v6, v24

    move-object/from16 v6, p0

    move-object/from16 v9, p7

    move/from16 v11, v24

    move/from16 v12, v25

    move/from16 v13, v44

    invoke-virtual/range {v6 .. v13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_big_to_fp([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[IIIII)V

    sub-int v6, v25, v24

    mul-int/lit8 v26, v6, 0x1f

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->bitlength_avg:[I

    aget v6, v6, p6

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->bitlength_std:[I

    aget v8, v8, p6

    mul-int/lit8 v8, v8, 0x6

    sub-int/2addr v6, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->bitlength_avg:[I

    aget v8, v8, p6

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->bitlength_std:[I

    aget v9, v9, p6

    mul-int/lit8 v9, v9, 0x6

    add-int v29, v8, v9

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    const/4 v9, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v44

    invoke-virtual {v8, v0, v9, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    const/4 v9, 0x0

    move/from16 v0, v44

    invoke-virtual {v8, v7, v9, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    move-object/from16 v22, v7

    move/from16 v24, v44

    invoke-virtual/range {v17 .. v24}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_invnorm2_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    const/4 v9, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v44

    invoke-virtual {v8, v0, v9, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_adj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    const/4 v9, 0x0

    move/from16 v0, v44

    invoke-virtual {v8, v7, v9, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_adj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    mul-int/lit8 v16, v35, 0x1f

    sub-int v6, v16, v6

    move/from16 v17, v6

    move/from16 v34, v35

    :goto_9
    const/16 v6, 0xa

    move/from16 v0, v34

    if-le v0, v6, :cond_a

    const/16 v13, 0xa

    :goto_a
    sub-int v6, v34, v13

    mul-int/lit8 v6, v6, 0x1f

    const/4 v10, 0x0

    add-int v8, p8, v34

    sub-int v12, v8, v13

    move-object/from16 v8, p0

    move-object/from16 v9, v27

    move-object/from16 v11, p7

    move/from16 v14, v35

    move/from16 v15, v44

    invoke-virtual/range {v8 .. v15}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_big_to_fp([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[IIIII)V

    const/4 v10, 0x0

    add-int v8, v47, v34

    sub-int v12, v8, v13

    move-object/from16 v8, p0

    move-object/from16 v9, v28

    move-object/from16 v11, p7

    move/from16 v14, v35

    move/from16 v15, v44

    invoke-virtual/range {v8 .. v15}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_big_to_fp([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[IIIII)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    const/4 v9, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v44

    invoke-virtual {v8, v0, v9, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    const/4 v9, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v44

    invoke-virtual {v8, v0, v9, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v9, v27

    move-object/from16 v11, v20

    move/from16 v13, v44

    invoke-virtual/range {v8 .. v13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v9, v28

    move-object v11, v7

    move/from16 v13, v44

    invoke-virtual/range {v8 .. v13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v9, v28

    move-object/from16 v11, v27

    move/from16 v13, v44

    invoke-virtual/range {v8 .. v13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_add([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v9, v28

    move-object/from16 v11, v18

    move/from16 v13, v44

    invoke-virtual/range {v8 .. v13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_autoadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    const/4 v9, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v44

    invoke-virtual {v8, v0, v9, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->iFFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    sub-int v6, v17, v6

    add-int v8, v6, v26

    if-gez v8, :cond_b

    neg-int v8, v8

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_two:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    :goto_b
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_one:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-object v10, v6

    move v11, v8

    :goto_c
    if-eqz v11, :cond_c

    and-int/lit8 v6, v11, 0x1

    if-eqz v6, :cond_19

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v6, v9, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    :goto_d
    shr-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v8, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v8

    move-object v10, v8

    move-object v9, v6

    goto :goto_c

    :cond_9
    move/from16 v24, v25

    goto/16 :goto_8

    :cond_a
    move/from16 v13, v34

    goto/16 :goto_a

    :cond_b
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_onehalf:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    goto :goto_b

    :cond_c
    const/4 v6, 0x0

    :goto_e
    move/from16 v0, v61

    if-ge v6, v0, :cond_f

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    aget-object v10, v28, v6

    invoke-virtual {v8, v10, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v11, v11, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mtwo31m1:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v10, v11, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_lt(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Z

    move-result v10

    if-eqz v10, :cond_d

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v11, v11, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_ptwo31m1:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v10, v8, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_lt(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Z

    move-result v10

    if-nez v10, :cond_e

    :cond_d
    const/4 v6, 0x0

    :goto_f
    return v6

    :cond_e
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v10, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_rint(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)J

    move-result-wide v10

    long-to-int v8, v10

    aput v8, v40, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_f
    div-int/lit8 v42, v17, 0x1f

    rem-int/lit8 v43, v17, 0x1f

    const/4 v6, 0x4

    move/from16 v0, p6

    if-gt v0, v6, :cond_10

    const/16 v41, 0x0

    move-object/from16 v31, p0

    move-object/from16 v32, p7

    move/from16 v33, p8

    move-object/from16 v36, p7

    move/from16 v38, v25

    move/from16 v39, v25

    move-object/from16 v45, p7

    move/from16 v46, v30

    invoke-virtual/range {v31 .. v46}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_sub_scaled_ntt([IIII[IIII[IIIII[II)V

    const/16 v55, 0x0

    move-object/from16 v45, p0

    move-object/from16 v46, p7

    move/from16 v48, v34

    move/from16 v49, v35

    move-object/from16 v50, p7

    move/from16 v52, v25

    move/from16 v53, v25

    move-object/from16 v54, v40

    move/from16 v56, v42

    move/from16 v57, v43

    move/from16 v58, v44

    move-object/from16 v59, p7

    move/from16 v60, v30

    invoke-virtual/range {v45 .. v60}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_sub_scaled_ntt([IIII[IIII[IIIII[II)V

    :goto_10
    add-int v6, v17, v29

    add-int/lit8 v6, v6, 0xa

    move/from16 v0, v16

    if-ge v6, v0, :cond_18

    mul-int/lit8 v8, v34, 0x1f

    add-int/lit8 v9, v6, 0x1f

    if-lt v8, v9, :cond_17

    add-int/lit8 v34, v34, -0x1

    move v9, v6

    move/from16 v8, v34

    :goto_11
    if-gtz v17, :cond_11

    move/from16 v0, v25

    if-ge v8, v0, :cond_15

    const/4 v6, 0x0

    move/from16 v7, p8

    move v9, v6

    :goto_12
    move/from16 v0, v61

    if-ge v9, v0, :cond_15

    add-int v6, v7, v8

    add-int/lit8 v6, v6, -0x1

    aget v6, p7, v6

    ushr-int/lit8 v6, v6, 0x1e

    neg-int v6, v6

    ushr-int/lit8 v10, v6, 0x1

    move v6, v8

    :goto_13
    move/from16 v0, v25

    if-ge v6, v0, :cond_13

    add-int v11, v7, v6

    aput v10, p7, v11

    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :cond_10
    const/16 v41, 0x0

    move-object/from16 v31, p0

    move-object/from16 v32, p7

    move/from16 v33, p8

    move-object/from16 v36, p7

    move/from16 v38, v25

    move/from16 v39, v25

    invoke-virtual/range {v31 .. v44}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_sub_scaled([IIII[IIII[IIIII)V

    const/16 v55, 0x0

    move-object/from16 v45, p0

    move-object/from16 v46, p7

    move/from16 v48, v34

    move/from16 v49, v35

    move-object/from16 v50, p7

    move/from16 v52, v25

    move/from16 v53, v25

    move-object/from16 v54, v40

    move/from16 v56, v42

    move/from16 v57, v43

    move/from16 v58, v44

    invoke-virtual/range {v45 .. v58}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->poly_sub_scaled([IIII[IIII[IIIII)V

    goto :goto_10

    :cond_11
    add-int/lit8 v6, v17, -0x19

    if-gez v6, :cond_12

    const/4 v6, 0x0

    :cond_12
    move/from16 v17, v6

    move/from16 v16, v9

    move/from16 v34, v8

    goto/16 :goto_9

    :cond_13
    add-int v6, v47, v8

    add-int/lit8 v6, v6, -0x1

    aget v6, p7, v6

    ushr-int/lit8 v6, v6, 0x1e

    neg-int v6, v6

    ushr-int/lit8 v10, v6, 0x1

    move v6, v8

    :goto_14
    move/from16 v0, v25

    if-ge v6, v0, :cond_14

    add-int v11, v47, v6

    aput v10, p7, v11

    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    :cond_14
    add-int/lit8 v9, v9, 0x1

    add-int v6, v7, v35

    add-int v47, v47, v35

    move v7, v6

    goto :goto_12

    :cond_15
    const/4 v8, 0x0

    move/from16 v6, p8

    move/from16 v7, p8

    :goto_15
    shl-int/lit8 v9, v61, 0x1

    if-ge v8, v9, :cond_16

    move-object/from16 v0, p7

    move-object/from16 v1, p7

    move/from16 v2, v25

    invoke-static {v0, v6, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v8, v8, 0x1

    add-int v7, v7, v25

    add-int p8, v6, v35

    move/from16 v6, p8

    goto :goto_15

    :cond_16
    const/4 v6, 0x1

    goto/16 :goto_f

    :cond_17
    move v9, v6

    move/from16 v8, v34

    goto/16 :goto_11

    :cond_18
    move/from16 v9, v16

    move/from16 v8, v34

    goto/16 :goto_11

    :cond_19
    move-object v6, v9

    goto/16 :goto_d
.end method

.method zint_add_mul_small([II[IIII)V
    .locals 8

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v2, p5, :cond_0

    add-int v1, p2, v2

    aget v1, p1, v1

    add-int v3, p4, v2

    aget v3, p3, v3

    invoke-direct {p0, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v4

    invoke-direct {p0, p6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v6

    mul-long/2addr v4, v6

    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v0

    add-long/2addr v0, v4

    add-int v3, p2, v2

    long-to-int v4, v0

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    aput v4, p1, v3

    const/16 v3, 0x1f

    ushr-long/2addr v0, v3

    long-to-int v0, v0

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    add-int v1, p2, p5

    aput v0, p1, v1

    return-void
.end method

.method zint_add_scaled_mul_small([III[IIIIII)V
    .locals 12

    if-nez p6, :cond_1

    :cond_0
    return-void

    :cond_1
    add-int v2, p5, p6

    add-int/lit8 v2, v2, -0x1

    aget v2, p4, v2

    ushr-int/lit8 v2, v2, 0x1e

    neg-int v2, v2

    ushr-int/lit8 v3, v2, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    move v4, v2

    move/from16 v6, p8

    :goto_0
    if-ge v6, p3, :cond_0

    sub-int v2, v6, p8

    move/from16 v0, p6

    if-ge v2, v0, :cond_2

    add-int v2, v2, p5

    aget v2, p4, v2

    :goto_1
    shl-int v7, v2, p9

    const v8, 0x7fffffff

    and-int/2addr v7, v8

    or-int/2addr v7, v5

    rsub-int/lit8 v5, p9, 0x1f

    ushr-int v5, v2, v5

    invoke-direct {p0, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v8

    move/from16 v0, p7

    int-to-long v10, v0

    mul-long/2addr v8, v10

    add-int v2, p2, v6

    aget v2, p1, v2

    invoke-direct {p0, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v10

    add-long/2addr v8, v10

    int-to-long v10, v4

    add-long/2addr v8, v10

    add-int v2, p2, v6

    long-to-int v4, v8

    const v7, 0x7fffffff

    and-int/2addr v4, v7

    aput v4, p1, v2

    const/16 v2, 0x1f

    ushr-long/2addr v8, v2

    long-to-int v2, v8

    add-int/lit8 v6, v6, 0x1

    move v4, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method zint_bezout([II[II[II[III[II)I
    .locals 34

    if-nez p9, :cond_0

    const/4 v6, 0x0

    :goto_0
    return v6

    :cond_0
    add-int v29, p11, p9

    add-int v8, v29, p9

    add-int v10, v8, p9

    add-int/lit8 v6, p6, 0x0

    aget v6, p5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_ninv31(I)I

    move-result v30

    add-int/lit8 v6, p8, 0x0

    aget v6, p7, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_ninv31(I)I

    move-result v31

    move-object/from16 v0, p5

    move/from16 v1, p6

    move-object/from16 v2, p10

    move/from16 v3, p9

    invoke-static {v0, v1, v2, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p7

    move/from16 v1, p8

    move-object/from16 v2, p10

    move/from16 v3, p9

    invoke-static {v0, v1, v2, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v6, p2, 0x0

    const/4 v7, 0x1

    aput v7, p1, v6

    add-int/lit8 v6, p4, 0x0

    const/4 v7, 0x0

    aput v7, p3, v6

    const/4 v6, 0x1

    :goto_1
    move/from16 v0, p9

    if-ge v6, v0, :cond_1

    add-int v7, p2, v6

    const/4 v9, 0x0

    aput v9, p1, v7

    add-int v7, p4, v6

    const/4 v9, 0x0

    aput v9, p3, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v0, p7

    move/from16 v1, p8

    move-object/from16 v2, p10

    move/from16 v3, p11

    move/from16 v4, p9

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p5

    move/from16 v1, p6

    move-object/from16 v2, p10

    move/from16 v3, v29

    move/from16 v4, p9

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v6, v29, 0x0

    aget v7, p10, v6

    add-int/lit8 v7, v7, -0x1

    aput v7, p10, v6

    mul-int/lit8 v6, p9, 0x3e

    add-int/lit8 v6, v6, 0x1e

    move/from16 v28, v6

    :goto_2
    const/16 v6, 0x1e

    move/from16 v0, v28

    if-lt v0, v6, :cond_4

    const/4 v13, -0x1

    const/4 v12, -0x1

    const/4 v11, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    move/from16 v15, p9

    :goto_3
    add-int/lit8 v16, v15, -0x1

    if-lez v15, :cond_2

    add-int v14, v8, v16

    aget v14, p10, v14

    add-int v15, v10, v16

    aget v15, p10, v15

    xor-int v17, v11, v14

    and-int v17, v17, v13

    xor-int v11, v11, v17

    xor-int v17, v9, v14

    and-int v17, v17, v12

    xor-int v9, v9, v17

    xor-int v17, v7, v15

    and-int v17, v17, v13

    xor-int v7, v7, v17

    xor-int v17, v6, v15

    and-int v12, v12, v17

    xor-int/2addr v6, v12

    or-int v12, v14, v15

    const v14, 0x7fffffff

    add-int/2addr v12, v14

    ushr-int/lit8 v12, v12, 0x1f

    add-int/lit8 v12, v12, -0x1

    and-int v14, v13, v12

    move v12, v13

    move/from16 v15, v16

    move v13, v14

    goto :goto_3

    :cond_2
    and-int v13, v11, v12

    or-int/2addr v9, v13

    xor-int/lit8 v13, v12, -0x1

    and-int/2addr v11, v13

    and-int v13, v7, v12

    or-int/2addr v6, v13

    xor-int/lit8 v12, v12, -0x1

    and-int/2addr v7, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v12

    const/16 v11, 0x1f

    shl-long/2addr v12, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v14

    add-long v22, v12, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v12

    const/16 v7, 0x1f

    shl-long/2addr v12, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v6

    add-long v20, v12, v6

    add-int/lit8 v6, v8, 0x0

    aget v9, p10, v6

    add-int/lit8 v6, v10, 0x0

    aget v7, p10, v6

    const-wide/16 v12, 0x1

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x1

    const/4 v6, 0x0

    :goto_4
    const/16 v11, 0x1f

    if-ge v6, v11, :cond_3

    sub-long v24, v20, v22

    xor-long v26, v22, v20

    xor-long v32, v22, v24

    and-long v26, v26, v32

    xor-long v24, v24, v26

    const/16 v11, 0x3f

    ushr-long v24, v24, v11

    move-wide/from16 v0, v24

    long-to-int v11, v0

    shr-int v24, v9, v6

    and-int/lit8 v24, v24, 0x1

    shr-int v25, v7, v6

    and-int/lit8 v25, v25, 0x1

    and-int v26, v24, v25

    and-int v26, v26, v11

    and-int v25, v25, v24

    xor-int/lit8 v11, v11, -0x1

    and-int v11, v11, v25

    xor-int/lit8 v24, v24, 0x1

    or-int v24, v24, v26

    move/from16 v0, v26

    neg-int v0, v0

    move/from16 v25, v0

    and-int v25, v25, v7

    sub-int v9, v9, v25

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v32

    move-wide/from16 v0, v32

    neg-long v0, v0

    move-wide/from16 v32, v0

    and-long v32, v32, v20

    sub-long v22, v22, v32

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    neg-long v0, v0

    move-wide/from16 v32, v0

    and-long v32, v32, v16

    sub-long v12, v12, v32

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    neg-long v0, v0

    move-wide/from16 v26, v0

    and-long v26, v26, v18

    sub-long v14, v14, v26

    neg-int v0, v11

    move/from16 v25, v0

    and-int v25, v25, v9

    sub-int v7, v7, v25

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v26

    move-wide/from16 v0, v26

    neg-long v0, v0

    move-wide/from16 v26, v0

    and-long v26, v26, v22

    sub-long v20, v20, v26

    int-to-long v0, v11

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    neg-long v0, v0

    move-wide/from16 v26, v0

    and-long v26, v26, v12

    sub-long v16, v16, v26

    int-to-long v0, v11

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    neg-long v0, v0

    move-wide/from16 v26, v0

    and-long v26, v26, v14

    sub-long v18, v18, v26

    add-int/lit8 v11, v24, -0x1

    and-int/2addr v11, v9

    add-int/2addr v9, v11

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v26, v0

    const-wide/16 v32, 0x1

    sub-long v26, v26, v32

    and-long v26, v26, v12

    add-long v12, v12, v26

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v26, v0

    const-wide/16 v32, 0x1

    sub-long v26, v26, v32

    and-long v26, v26, v14

    add-long v14, v14, v26

    const/4 v11, 0x1

    shr-long v26, v22, v11

    xor-long v26, v26, v22

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v32

    move-wide/from16 v0, v32

    neg-long v0, v0

    move-wide/from16 v32, v0

    and-long v26, v26, v32

    xor-long v22, v22, v26

    move/from16 v0, v24

    neg-int v11, v0

    and-int/2addr v11, v7

    add-int/2addr v7, v11

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    neg-long v0, v0

    move-wide/from16 v26, v0

    and-long v26, v26, v16

    add-long v16, v16, v26

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    neg-long v0, v0

    move-wide/from16 v26, v0

    and-long v26, v26, v18

    add-long v18, v18, v26

    const/4 v11, 0x1

    shr-long v26, v20, v11

    xor-long v26, v26, v20

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v24

    const-wide/16 v32, 0x1

    sub-long v24, v24, v32

    and-long v24, v24, v26

    xor-long v20, v20, v24

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    :cond_3
    move-object/from16 v6, p0

    move-object/from16 v7, p10

    move-object/from16 v9, p10

    move/from16 v11, p9

    invoke-virtual/range {v6 .. v19}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_co_reduce([II[IIIJJJJ)I

    move-result v6

    add-long v20, v12, v12

    and-int/lit8 v7, v6, 0x1

    int-to-long v0, v7

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    neg-long v0, v0

    move-wide/from16 v22, v0

    and-long v20, v20, v22

    sub-long v20, v12, v20

    add-long v12, v14, v14

    and-int/lit8 v7, v6, 0x1

    int-to-long v0, v7

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    neg-long v0, v0

    move-wide/from16 v22, v0

    and-long v12, v12, v22

    sub-long v22, v14, v12

    add-long v12, v16, v16

    ushr-int/lit8 v7, v6, 0x1

    int-to-long v14, v7

    neg-long v14, v14

    and-long/2addr v12, v14

    sub-long v24, v16, v12

    add-long v12, v18, v18

    ushr-int/lit8 v6, v6, 0x1

    int-to-long v6, v6

    neg-long v6, v6

    and-long/2addr v6, v12

    sub-long v26, v18, v6

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v13, p2

    move-object/from16 v14, p10

    move/from16 v15, p11

    move-object/from16 v16, p7

    move/from16 v17, p8

    move/from16 v18, p9

    move/from16 v19, v31

    invoke-virtual/range {v11 .. v27}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_co_reduce_mod([II[II[IIIIJJJJ)V

    move-object/from16 v11, p0

    move-object/from16 v12, p3

    move/from16 v13, p4

    move-object/from16 v14, p10

    move/from16 v15, v29

    move-object/from16 v16, p5

    move/from16 v17, p6

    move/from16 v18, p9

    move/from16 v19, v30

    invoke-virtual/range {v11 .. v27}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_co_reduce_mod([II[II[IIIIJJJJ)V

    add-int/lit8 v6, v28, -0x1e

    move/from16 v28, v6

    goto/16 :goto_2

    :cond_4
    add-int/lit8 v6, v8, 0x0

    aget v6, p10, v6

    xor-int/lit8 v7, v6, 0x1

    const/4 v6, 0x1

    :goto_5
    move/from16 v0, p9

    if-ge v6, v0, :cond_5

    add-int v9, v8, v6

    aget v9, p10, v9

    or-int/2addr v7, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_5
    neg-int v6, v7

    or-int/2addr v6, v7

    ushr-int/lit8 v6, v6, 0x1f

    rsub-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, p6, 0x0

    aget v7, p5, v7

    and-int/2addr v6, v7

    add-int/lit8 v7, p8, 0x0

    aget v7, p7, v7

    and-int/2addr v6, v7

    goto/16 :goto_0
.end method

.method zint_co_reduce([II[IIIJJJJ)I
    .locals 16

    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v8, 0x0

    :goto_0
    move/from16 v0, p5

    if-ge v8, v0, :cond_1

    add-int v9, p2, v8

    aget v9, p1, v9

    add-int v10, p4, v8

    aget v10, p3, v10

    int-to-long v12, v9

    mul-long v12, v12, p6

    int-to-long v14, v10

    mul-long v14, v14, p8

    add-long/2addr v12, v14

    add-long/2addr v6, v12

    int-to-long v12, v9

    mul-long v12, v12, p10

    int-to-long v10, v10

    mul-long v10, v10, p12

    add-long/2addr v10, v12

    add-long/2addr v4, v10

    if-lez v8, :cond_0

    add-int v9, p2, v8

    add-int/lit8 v9, v9, -0x1

    long-to-int v10, v6

    const v11, 0x7fffffff

    and-int/2addr v10, v11

    aput v10, p1, v9

    add-int v9, p4, v8

    add-int/lit8 v9, v9, -0x1

    long-to-int v10, v4

    const v11, 0x7fffffff

    and-int/2addr v10, v11

    aput v10, p3, v9

    :cond_0
    const/16 v9, 0x1f

    shr-long/2addr v6, v9

    const/16 v9, 0x1f

    shr-long/2addr v4, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    add-int v8, p2, p5

    add-int/lit8 v8, v8, -0x1

    long-to-int v9, v6

    aput v9, p1, v8

    add-int v8, p4, p5

    add-int/lit8 v8, v8, -0x1

    long-to-int v9, v4

    aput v9, p3, v8

    const/16 v8, 0x3f

    ushr-long/2addr v6, v8

    long-to-int v6, v6

    const/16 v7, 0x3f

    ushr-long/2addr v4, v7

    long-to-int v4, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_negate([IIII)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_negate([IIII)V

    shl-int/lit8 v4, v4, 0x1

    or-int/2addr v4, v6

    return v4
.end method

.method zint_co_reduce_mod([II[II[IIIIJJJJ)V
    .locals 19

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    add-int/lit8 v6, p2, 0x0

    aget v6, p1, v6

    move-wide/from16 v0, p9

    long-to-int v7, v0

    mul-int/2addr v6, v7

    add-int/lit8 v7, p4, 0x0

    aget v7, p3, v7

    move-wide/from16 v0, p11

    long-to-int v8, v0

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    mul-int v6, v6, p8

    const v7, 0x7fffffff

    and-int/2addr v7, v6

    add-int/lit8 v6, p2, 0x0

    aget v6, p1, v6

    move-wide/from16 v0, p13

    long-to-int v8, v0

    mul-int/2addr v6, v8

    add-int/lit8 v8, p4, 0x0

    aget v8, p3, v8

    move-wide/from16 v0, p15

    long-to-int v9, v0

    mul-int/2addr v8, v9

    add-int/2addr v6, v8

    mul-int v6, v6, p8

    const v8, 0x7fffffff

    and-int/2addr v8, v6

    const/4 v6, 0x0

    move-wide v10, v2

    :goto_0
    move/from16 v0, p7

    if-ge v6, v0, :cond_1

    add-int v2, p2, v6

    aget v2, p1, v2

    add-int v3, p4, v6

    aget v3, p3, v3

    int-to-long v12, v2

    mul-long v12, v12, p9

    int-to-long v14, v3

    mul-long v14, v14, p11

    add-long/2addr v12, v14

    add-int v9, p6, v6

    aget v9, p5, v9

    int-to-long v14, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v16

    mul-long v14, v14, v16

    add-long/2addr v12, v14

    add-long/2addr v4, v12

    int-to-long v12, v2

    mul-long v12, v12, p13

    int-to-long v2, v3

    mul-long v2, v2, p15

    add-long/2addr v2, v12

    add-int v9, p6, v6

    aget v9, p5, v9

    int-to-long v12, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v14

    mul-long/2addr v12, v14

    add-long/2addr v2, v12

    add-long/2addr v2, v10

    if-lez v6, :cond_0

    add-int v9, p2, v6

    add-int/lit8 v9, v9, -0x1

    long-to-int v10, v4

    const v11, 0x7fffffff

    and-int/2addr v10, v11

    aput v10, p1, v9

    add-int v9, p4, v6

    add-int/lit8 v9, v9, -0x1

    long-to-int v10, v2

    const v11, 0x7fffffff

    and-int/2addr v10, v11

    aput v10, p3, v9

    :cond_0
    const/16 v9, 0x1f

    shr-long/2addr v4, v9

    const/16 v9, 0x1f

    shr-long/2addr v2, v9

    add-int/lit8 v6, v6, 0x1

    move-wide v10, v2

    goto :goto_0

    :cond_1
    add-int v2, p2, p7

    add-int/lit8 v2, v2, -0x1

    long-to-int v3, v4

    aput v3, p1, v2

    add-int v2, p4, p7

    add-int/lit8 v2, v2, -0x1

    long-to-int v3, v10

    aput v3, p3, v2

    const/16 v2, 0x3f

    ushr-long v2, v4, v2

    long-to-int v8, v2

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p7

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_finish_mod([III[III)V

    const/16 v2, 0x3f

    ushr-long v2, v10, v2

    long-to-int v8, v2

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p7

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_finish_mod([III[III)V

    return-void
.end method

.method zint_finish_mod([III[III)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v2, p3, :cond_0

    add-int v3, p2, v2

    aget v3, p1, v3

    add-int v4, p5, v2

    aget v4, p4, v4

    sub-int/2addr v3, v4

    sub-int v1, v3, v1

    ushr-int/lit8 v1, v1, 0x1f

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    neg-int v2, p6

    ushr-int/lit8 v2, v2, 0x1

    rsub-int/lit8 v1, v1, 0x1

    or-int/2addr v1, p6

    neg-int v1, v1

    :goto_1
    if-ge v0, p3, :cond_1

    add-int v3, p2, v0

    aget v3, p1, v3

    add-int v4, p5, v0

    aget v4, p4, v4

    xor-int/2addr v4, v2

    and-int/2addr v4, v1

    sub-int/2addr v3, v4

    sub-int/2addr v3, p6

    add-int v4, p2, v0

    const v5, 0x7fffffff

    and-int/2addr v5, v3

    aput v5, p1, v4

    ushr-int/lit8 p6, v3, 0x1f

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method zint_mod_small_signed([IIIIIII)I
    .locals 2

    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual/range {p0 .. p6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_mod_small_unsigned([IIIIII)I

    move-result v0

    add-int v1, p2, p3

    add-int/lit8 v1, v1, -0x1

    aget v1, p1, v1

    ushr-int/lit8 v1, v1, 0x1e

    neg-int v1, v1

    and-int/2addr v1, p7

    invoke-virtual {p0, v0, v1, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_sub(III)I

    move-result v0

    goto :goto_0
.end method

.method zint_mod_small_unsigned([IIIIII)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    add-int/lit8 v0, p3, -0x1

    if-lez p3, :cond_0

    invoke-virtual {p0, v1, p6, p4, p5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v1

    add-int v2, p2, v0

    aget v2, p1, v2

    sub-int/2addr v2, p4

    ushr-int/lit8 v3, v2, 0x1f

    neg-int v3, v3

    and-int/2addr v3, p4

    add-int/2addr v2, v3

    invoke-virtual {p0, v1, v2, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_add(III)I

    move-result v1

    move p3, v0

    goto :goto_0

    :cond_0
    return v1
.end method

.method zint_mul_small([IIII)I
    .locals 8

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v2, p3, :cond_0

    add-int v1, p2, v2

    aget v1, p1, v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v4

    invoke-direct {p0, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->toUnsignedLong(I)J

    move-result-wide v6

    mul-long/2addr v4, v6

    int-to-long v0, v0

    add-long/2addr v0, v4

    add-int v3, p2, v2

    long-to-int v4, v0

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    aput v4, p1, v3

    const/16 v3, 0x1f

    shr-long/2addr v0, v3

    long-to-int v0, v0

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method zint_negate([IIII)V
    .locals 5

    neg-int v0, p4

    ushr-int/lit8 v1, v0, 0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v2, p2, v0

    aget v2, p1, v2

    xor-int/2addr v2, v1

    add-int/2addr v2, p4

    add-int v3, p2, v0

    const v4, 0x7fffffff

    and-int/2addr v4, v2

    aput v4, p1, v3

    ushr-int/lit8 p4, v2, 0x1f

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method zint_norm_zero([II[III)V
    .locals 7

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    move v3, p5

    :goto_0
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_0

    add-int v1, p2, v4

    aget v1, p1, v1

    add-int v3, p4, v4

    aget v3, p3, v3

    ushr-int/lit8 v3, v3, 0x1

    shl-int/lit8 v0, v0, 0x1e

    or-int/2addr v3, v0

    add-int v0, p4, v4

    aget v0, p3, v0

    and-int/lit8 v0, v0, 0x1

    sub-int v1, v3, v1

    neg-int v3, v1

    ushr-int/lit8 v3, v3, 0x1f

    ushr-int/lit8 v1, v1, 0x1f

    neg-int v1, v1

    or-int/2addr v1, v3

    and-int/lit8 v3, v2, 0x1

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    move v2, v1

    move v3, v4

    goto :goto_0

    :cond_0
    ushr-int/lit8 v6, v2, 0x1f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_sub([II[IIII)I

    return-void
.end method

.method zint_one_to_plain([II)I
    .locals 2

    add-int/lit8 v0, p2, 0x0

    aget v0, p1, v0

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, v0

    shl-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    return v0
.end method

.method zint_rebuild_CRT([IIIII[Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;I[II)V
    .locals 19

    add-int/lit8 v3, p9, 0x0

    const/4 v4, 0x0

    aget-object v4, p6, v4

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->p:I

    aput v4, p8, v3

    const/4 v6, 0x1

    :goto_0
    move/from16 v0, p3

    if-ge v6, v0, :cond_1

    aget-object v3, p6, v6

    iget v7, v3, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->p:I

    aget-object v3, p6, v6

    iget v0, v3, Lorg/bouncycastle/pqc/crypto/falcon/FalconSmallPrime;->s:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_ninv31(I)I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_R2(II)I

    move-result v9

    const/4 v3, 0x0

    move/from16 v17, v3

    move/from16 v5, p2

    :goto_1
    move/from16 v0, v17

    move/from16 v1, p5

    if-ge v0, v1, :cond_0

    add-int v3, v5, v6

    aget v10, p1, v3

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_mod_small_unsigned([IIIIII)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v3, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_sub(III)I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v3, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->modp_montymul(IIII)I

    move-result v16

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move v12, v5

    move-object/from16 v13, p8

    move/from16 v14, p9

    move v15, v6

    invoke-virtual/range {v10 .. v16}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_add_mul_small([II[IIII)V

    add-int/lit8 v3, v17, 0x1

    add-int v5, v5, p4

    move/from16 v17, v3

    goto :goto_1

    :cond_0
    add-int v3, p9, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move/from16 v2, p9

    invoke-virtual {v0, v1, v2, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_mul_small([IIII)I

    move-result v4

    aput v4, p8, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    if-eqz p7, :cond_2

    const/4 v3, 0x0

    move/from16 v5, p2

    move v9, v3

    :goto_2
    move/from16 v0, p5

    if-ge v9, v0, :cond_2

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->zint_norm_zero([II[III)V

    add-int/lit8 v3, v9, 0x1

    add-int v5, v5, p4

    move v9, v3

    goto :goto_2

    :cond_2
    return-void
.end method

.method zint_sub([II[IIII)I
    .locals 6

    const/4 v1, 0x0

    neg-int v3, p6

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v2, p5, :cond_0

    add-int v1, p2, v2

    aget v1, p1, v1

    add-int v4, p4, v2

    aget v4, p3, v4

    sub-int v4, v1, v4

    sub-int/2addr v4, v0

    ushr-int/lit8 v0, v4, 0x1f

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    xor-int/2addr v4, v1

    and-int/2addr v4, v3

    xor-int/2addr v1, v4

    add-int v4, p2, v2

    aput v1, p1, v4

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method zint_sub_scaled([III[IIIII)V
    .locals 7

    const v6, 0x7fffffff

    const/4 v0, 0x0

    if-nez p6, :cond_1

    :cond_0
    return-void

    :cond_1
    add-int v1, p5, p6

    add-int/lit8 v1, v1, -0x1

    aget v1, p4, v1

    ushr-int/lit8 v1, v1, 0x1e

    neg-int v1, v1

    ushr-int/lit8 v1, v1, 0x1

    move v2, v0

    move v3, v0

    move v4, p7

    :goto_0
    if-ge v4, p3, :cond_0

    sub-int v0, v4, p7

    if-ge v0, p6, :cond_2

    add-int/2addr v0, p5

    aget v0, p4, v0

    :goto_1
    shl-int v5, v0, p8

    and-int/2addr v5, v6

    or-int/2addr v5, v3

    rsub-int/lit8 v3, p8, 0x1f

    ushr-int v3, v0, v3

    add-int v0, p2, v4

    aget v0, p1, v0

    sub-int/2addr v0, v5

    sub-int/2addr v0, v2

    add-int v2, p2, v4

    and-int v5, v0, v6

    aput v5, p1, v2

    ushr-int/lit8 v0, v0, 0x1f

    add-int/lit8 v4, v4, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method
