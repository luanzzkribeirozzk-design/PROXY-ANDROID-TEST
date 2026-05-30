.class public Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;
.super Ljava/lang/Object;


# static fields
.field public static final AaEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final CrlEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final CtlCommand:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final CtlDelete:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final CtlEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final CtlFormat:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final DcDelete:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final DcEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final DeltaCtl:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final EaEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final FullCtl:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final RootCaEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final SequenceOfCrlEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final SequenceOfCtlCommand:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final TlmEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final ToBeSignedCrl:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final ToBeSignedRcaCtl:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final ToBeSignedTlmCtl:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final Url:Lorg/bouncycastle/oer/OERDefinition$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    sget-object v0, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->HashedId8:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v1, "CrlEntry"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->CrlEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

    new-array v0, v4, [Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->CrlEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

    aput-object v1, v0, v6

    invoke-static {v0}, Lorg/bouncycastle/oer/OERDefinition;->seqof([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "SequenceOfCrlEntry"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->SequenceOfCrlEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/oer/its/template/etsi102941/basetypes/EtsiTs102941BaseTypes;->Version:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v2, "version"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    aput-object v1, v0, v6

    sget-object v1, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->Time32:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v2, "thisUpdate"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    aput-object v1, v0, v4

    sget-object v1, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->Time32:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v2, "nextUpdate"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    aput-object v1, v0, v5

    sget-object v1, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->SequenceOfCrlEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v2, "entries"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    aput-object v1, v0, v7

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v1}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v1

    aput-object v1, v0, v8

    invoke-static {v0}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "ToBeSignedCrl"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->ToBeSignedCrl:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-static {}, Lorg/bouncycastle/oer/OERDefinition;->ia5String()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "Url"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->Url:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->Url:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v1, "DcDelete"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->DcDelete:Lorg/bouncycastle/oer/OERDefinition$Builder;

    new-array v0, v5, [Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->Url:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v2, "url"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    aput-object v1, v0, v6

    sget-object v1, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->SequenceOfHashedId8:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v2, "cert"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "DcEntry"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->DcEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

    new-array v0, v5, [Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/oer/its/template/etsi103097/EtsiTs103097Module;->EtsiTs103097Certificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v2, "aaCertificate"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    aput-object v1, v0, v6

    sget-object v1, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->Url:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v2, "accessPoint"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "AaEntry"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->AaEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

    new-array v0, v7, [Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/oer/its/template/etsi103097/EtsiTs103097Module;->EtsiTs103097Certificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v2, "eaCertificate"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    aput-object v1, v0, v6

    sget-object v1, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->Url:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v2, "aaAccessPoint"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    aput-object v1, v0, v4

    new-array v1, v4, [Ljava/lang/Object;

    sget-object v2, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->Url:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v3, "itsAccessPoint"

    invoke-virtual {v2, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v1}, Lorg/bouncycastle/oer/OERDefinition;->optional([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v0}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "EaEntry"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->EaEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

    new-array v0, v5, [Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/oer/its/template/etsi103097/EtsiTs103097Module;->EtsiTs103097Certificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v2, "selfsignedRootCa"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    aput-object v1, v0, v6

    new-array v1, v4, [Ljava/lang/Object;

    sget-object v2, Lorg/bouncycastle/oer/its/template/etsi103097/EtsiTs103097Module;->EtsiTs103097Certificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v3, "successorTo"

    invoke-virtual {v2, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v1}, Lorg/bouncycastle/oer/OERDefinition;->optional([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "RootCaEntry"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->RootCaEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

    new-array v0, v7, [Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/oer/its/template/etsi103097/EtsiTs103097Module;->EtsiTs103097Certificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v2, "selfSignedTLMCertificate"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    aput-object v1, v0, v6

    new-array v1, v4, [Ljava/lang/Object;

    sget-object v2, Lorg/bouncycastle/oer/its/template/etsi103097/EtsiTs103097Module;->EtsiTs103097Certificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v3, "successorTo"

    invoke-virtual {v2, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v1}, Lorg/bouncycastle/oer/OERDefinition;->optional([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, v4

    sget-object v1, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->Url:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v2, "accessPoint"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v0}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "TlmEntry"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->TlmEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

    new-array v0, v7, [Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->HashedId8:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v2, "cert"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    aput-object v1, v0, v6

    sget-object v1, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->DcDelete:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v2, "dc"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v1}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v0}, Lorg/bouncycastle/oer/OERDefinition;->choice([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "CtlDelete"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->CtlDelete:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->RootCaEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v2, "rca"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    aput-object v1, v0, v6

    sget-object v1, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->EaEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v2, "ea"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    aput-object v1, v0, v4

    sget-object v1, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->AaEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v2, "aa"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    aput-object v1, v0, v5

    sget-object v1, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->DcEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v2, "dc"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    aput-object v1, v0, v7

    sget-object v1, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->TlmEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v2, "tlm"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v2}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/bouncycastle/oer/OERDefinition;->choice([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "CtlEntry"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->CtlEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

    new-array v0, v7, [Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->CtlEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v2, "add"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    aput-object v1, v0, v6

    sget-object v1, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->CtlDelete:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v2, "delete"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v1}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v0}, Lorg/bouncycastle/oer/OERDefinition;->choice([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "CtlCommand"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->CtlCommand:Lorg/bouncycastle/oer/OERDefinition$Builder;

    new-array v0, v4, [Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->CtlCommand:Lorg/bouncycastle/oer/OERDefinition$Builder;

    aput-object v1, v0, v6

    invoke-static {v0}, Lorg/bouncycastle/oer/OERDefinition;->seqof([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "SequenceOfCtlCommand"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->SequenceOfCtlCommand:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/oer/its/template/etsi102941/basetypes/EtsiTs102941BaseTypes;->Version:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v2, "version"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    aput-object v1, v0, v6

    sget-object v1, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->Time32:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v2, "nextUpdate"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {}, Lorg/bouncycastle/oer/OERDefinition;->bool()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const-string v2, "isFullCtl"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    aput-object v1, v0, v5

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xff

    invoke-static {v2, v3, v4, v5}, Lorg/bouncycastle/oer/OERDefinition;->integer(JJ)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const-string v2, "ctlSequence"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    aput-object v1, v0, v7

    sget-object v1, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->SequenceOfCtlCommand:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v2, "ctlCommands"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v2}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const-string v1, "CtlFormat"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->CtlFormat:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->CtlFormat:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v1, "DeltaCtl"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->DeltaCtl:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->CtlFormat:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v1, "FullCtl"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->FullCtl:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->CtlFormat:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v1, "ToBeSignedRcaCtl"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->ToBeSignedTlmCtl:Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->CtlFormat:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v1, "ToBeSignedRcaCtl"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->ToBeSignedRcaCtl:Lorg/bouncycastle/oer/OERDefinition$Builder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
