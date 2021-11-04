.class public Lcom/android/server/sepunion/friends/util/UtilStringCrypto;
.super Ljava/lang/Object;
.source "UtilStringCrypto.java"


# static fields
.field private static final PRIVATE_KEY:[B

.field private static final PUBLIC_KEY:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    const/16 v0, 0x4c2

    new-array v0, v0, [B

    fill-array-data v0, :array_14

    sput-object v0, Lcom/android/server/sepunion/friends/util/UtilStringCrypto;->PRIVATE_KEY:[B

    .line 188
    const/16 v0, 0x126

    new-array v0, v0, [B

    fill-array-data v0, :array_27a

    sput-object v0, Lcom/android/server/sepunion/friends/util/UtilStringCrypto;->PUBLIC_KEY:[B

    return-void

    nop

    :array_14
    .array-data 1
        0x30t
        -0x7et
        0x4t
        -0x42t
        0x2t
        0x1t
        0x0t
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0x1t
        0x5t
        0x0t
        0x4t
        -0x7et
        0x4t
        -0x58t
        0x30t
        -0x7et
        0x4t
        -0x5ct
        0x2t
        0x1t
        0x0t
        0x2t
        -0x7et
        0x1t
        0x1t
        0x0t
        -0x4et
        -0x51t
        0x68t
        -0x17t
        0x22t
        0x17t
        -0x5ct
        0x10t
        -0x61t
        -0x56t
        -0x61t
        0x4et
        0x69t
        0xet
        -0x31t
        0x16t
        0x14t
        -0x6ct
        -0xat
        -0x38t
        -0x9t
        -0xet
        -0x1ct
        -0x3et
        0x45t
        0x65t
        -0x7dt
        -0x5dt
        0x63t
        -0x77t
        0x32t
        -0x80t
        -0x5dt
        -0x43t
        -0x41t
        0x7et
        0x4bt
        -0x16t
        -0x50t
        0x15t
        -0x1dt
        -0x6et
        0x5ft
        -0x69t
        -0x6bt
        -0x76t
        -0x1t
        0x56t
        0x5dt
        0x58t
        0x2dt
        0xdt
        -0x59t
        -0x75t
        -0x8t
        -0x16t
        -0x43t
        -0x4t
        -0x1t
        0x7t
        0x33t
        0x2ft
        -0x44t
        0x43t
        0x0t
        -0x1at
        0x1et
        0x46t
        -0x2at
        -0x7ft
        0x69t
        -0x3bt
        -0x1ft
        -0x60t
        0x54t
        -0x63t
        -0x6t
        -0xat
        -0x6t
        -0x31t
        0x0t
        -0x77t
        0x6et
        0x68t
        0x24t
        0x16t
        0x2t
        0x2ct
        -0x4ct
        -0x7ft
        0x22t
        0x2dt
        -0x59t
        0x30t
        -0x13t
        -0x10t
        -0x3at
        0x56t
        0x7dt
        0x59t
        -0xdt
        0x6dt
        0x4t
        -0x30t
        -0xft
        0x27t
        -0x4dt
        0x14t
        -0x1ct
        -0x45t
        0x11t
        0x58t
        0x1dt
        -0x32t
        0x6ft
        -0x3ct
        -0x76t
        -0x2dt
        -0x70t
        -0x57t
        -0x5bt
        -0x52t
        0x79t
        0x3ft
        0x57t
        -0x6ct
        -0x59t
        0x3at
        0x36t
        0x6t
        0x7t
        -0x6et
        0x5ft
        0x3bt
        0x63t
        -0x7t
        0x39t
        -0x21t
        -0x76t
        0x35t
        -0x54t
        -0x25t
        -0x6t
        0x38t
        -0x4dt
        0x41t
        0x2t
        -0x55t
        -0x2ft
        -0x47t
        -0x2ct
        0x19t
        -0x5et
        0x17t
        -0x8t
        0x3et
        0x2bt
        0x77t
        -0x7t
        0x62t
        0x5dt
        -0x2et
        -0x7et
        0x31t
        0x2at
        -0x20t
        0x40t
        -0x1et
        -0xft
        0x3ct
        0x3ct
        -0x79t
        0xct
        0x47t
        0x53t
        -0x3et
        0x4ft
        0x2bt
        -0x79t
        0x63t
        -0x13t
        0x71t
        0x68t
        0x75t
        0x8t
        0x2t
        -0x48t
        -0x68t
        0xct
        0x37t
        -0x19t
        -0x79t
        0x23t
        -0x13t
        0x53t
        -0xct
        0x18t
        -0x12t
        -0x5ft
        0x70t
        0x6at
        0x52t
        0x36t
        -0x12t
        0x18t
        0x6ft
        -0x44t
        -0x5ct
        -0x1et
        0x2ct
        -0x72t
        0x3ct
        0x3et
        -0x37t
        -0x6t
        -0x21t
        0x49t
        -0x78t
        0x11t
        -0x62t
        -0x67t
        0x11t
        -0x80t
        0x6ft
        0x8t
        0x6ft
        -0x68t
        0x5ct
        -0x4et
        0x51t
        -0x4at
        0x5et
        -0x66t
        0x41t
        0x44t
        -0x2dt
        0x47t
        -0xct
        0x65t
        0x66t
        0x72t
        0x20t
        0x6ft
        0x56t
        0x17t
        0x6et
        0x35t
        -0x6t
        -0x4ct
        -0x29t
        0x0t
        -0x17t
        0x52t
        0x12t
        0x3ct
        -0x11t
        0x2t
        0x3t
        0x1t
        0x0t
        0x1t
        0x2t
        -0x7et
        0x1t
        0x0t
        0x5dt
        -0x57t
        -0x5at
        -0x2dt
        0x75t
        -0x5ct
        0x70t
        -0x3et
        -0x57t
        -0x1t
        0x35t
        0xct
        0x53t
        -0xdt
        -0x78t
        0x47t
        -0x57t
        -0x48t
        0x3ft
        -0x8t
        0x2et
        0x48t
        0x6at
        -0xdt
        0xet
        -0x71t
        0x5ct
        -0x3at
        0x5bt
        -0x67t
        -0x7et
        0x18t
        0x7et
        0x3ct
        0x2bt
        0x51t
        -0x69t
        -0x69t
        -0x38t
        0x7ft
        0x60t
        -0x31t
        -0x34t
        0x3dt
        -0x28t
        0xct
        -0x77t
        0x35t
        -0x75t
        0x2et
        0x7at
        0x47t
        0x4bt
        0x9t
        0xbt
        0xct
        0x79t
        0x54t
        0x51t
        -0x6at
        0x43t
        -0x6bt
        -0x7bt
        0x18t
        -0x6at
        0x33t
        0x9t
        -0x4ft
        -0x2at
        0x24t
        -0xbt
        -0x3t
        -0x24t
        -0x4t
        0x3et
        -0x2t
        -0x5ct
        -0x65t
        -0x55t
        -0xet
        -0x51t
        -0xct
        0x5at
        0x24t
        0x4at
        -0x52t
        0x22t
        -0x55t
        -0x52t
        0x5et
        0x76t
        0x3ct
        -0x6t
        0x3t
        -0x5et
        -0x1bt
        -0x10t
        0x1t
        0x4ct
        0x29t
        -0x39t
        0x78t
        -0x20t
        -0x16t
        0x69t
        0x4et
        -0x79t
        0x7t
        -0x51t
        -0x4et
        0x3t
        0x30t
        0x6et
        0x47t
        0x54t
        -0x44t
        -0x10t
        -0x74t
        0x5ft
        -0x55t
        0x1dt
        -0x7at
        -0x14t
        0x55t
        0x70t
        -0x5et
        0x22t
        0x59t
        0x76t
        -0x68t
        -0x25t
        0x2bt
        -0x7dt
        -0x3t
        -0xft
        0x1bt
        0x68t
        -0x6et
        0x26t
        0x3at
        -0x5t
        -0x55t
        -0x50t
        -0x78t
        0x56t
        -0x5ft
        -0x59t
        0x53t
        0x58t
        0x59t
        -0x80t
        -0x48t
        -0x17t
        -0x25t
        -0x6t
        -0x4t
        -0x77t
        0x13t
        0x2ft
        0x62t
        0x3bt
        -0x68t
        -0x6ct
        -0x58t
        0x28t
        0x2ft
        -0x13t
        -0x2dt
        0x45t
        -0x7dt
        0x6t
        -0x3ft
        0x7at
        -0x28t
        0x9t
        0x26t
        0x77t
        0x2ft
        -0x65t
        0x5at
        0x3ct
        -0x50t
        -0x25t
        -0x54t
        -0x44t
        0x40t
        0x1t
        -0x22t
        -0x47t
        -0x31t
        -0x2ct
        -0x20t
        -0x41t
        -0x4bt
        0x45t
        0x4et
        0x55t
        0x7at
        -0x49t
        -0x4et
        -0x1et
        -0x10t
        -0x5ct
        0x7bt
        -0x56t
        0x67t
        -0x18t
        -0x40t
        0x71t
        0x64t
        -0x72t
        -0x37t
        -0x35t
        0x6bt
        -0x68t
        -0x52t
        0x49t
        -0x36t
        0x16t
        -0x38t
        0x5et
        0x32t
        -0x12t
        -0x2ft
        0x10t
        0xat
        -0x73t
        -0x17t
        0x77t
        -0xct
        0x62t
        0x55t
        0x67t
        0x6t
        0x6ct
        0x43t
        0x58t
        0x4bt
        -0x37t
        -0x2et
        -0x63t
        -0x33t
        -0x4at
        0x37t
        -0x11t
        -0x25t
        -0x64t
        -0x27t
        -0x1bt
        0x69t
        -0x4et
        -0x4ct
        -0xat
        -0x48t
        -0x44t
        0x11t
        0x2t
        -0x7ft
        -0x7ft
        0x0t
        -0x13t
        -0x4ft
        -0x54t
        0x17t
        -0x10t
        -0x20t
        -0x57t
        0x16t
        0x21t
        0x12t
        -0x2ft
        -0x2at
        -0x38t
        0x6t
        0x20t
        0x2bt
        0x7bt
        0xet
        -0x33t
        -0x3t
        0x55t
        0x62t
        -0x50t
        -0x43t
        0x7et
        0x2dt
        -0x26t
        -0x3dt
        0x6dt
        0x13t
        -0x7ft
        0x6ct
        0x33t
        0x6t
        0x7dt
        0x17t
        -0x2dt
        -0x76t
        0x75t
        0x6ct
        0x3dt
        0x5dt
        0x76t
        0xft
        0x3bt
        -0x50t
        -0x4ft
        -0x3t
        0x60t
        0x1bt
        0x56t
        0x77t
        0x46t
        0x5dt
        0x11t
        0x7dt
        -0x4dt
        -0x22t
        0xdt
        -0x4dt
        0x26t
        0x35t
        -0x78t
        0x5dt
        0x42t
        0x12t
        0x64t
        0x44t
        -0x2ct
        -0x47t
        0x27t
        0x28t
        -0x4at
        -0x2ft
        0x74t
        0x1bt
        -0x47t
        0x6ft
        0x69t
        0x47t
        -0x16t
        0x68t
        -0x4ct
        -0x30t
        -0x54t
        -0x78t
        -0x57t
        -0x1bt
        -0x79t
        0x6bt
        0x19t
        -0x5bt
        0x49t
        -0x40t
        -0x49t
        0x79t
        0x61t
        -0x29t
        0x7ft
        0x3ct
        -0x3ft
        0x5ft
        0x1ct
        -0xft
        0x1et
        -0x4dt
        -0x6t
        -0x3bt
        0x53t
        -0x66t
        0x55t
        0x6et
        0x21t
        0x72t
        0x13t
        -0x22t
        -0x27t
        0x6at
        -0x45t
        0x3dt
        -0x70t
        0x16t
        0x1bt
        -0x37t
        -0x33t
        0x6dt
        0x31t
        0x7t
        0x2t
        -0x7ft
        -0x7ft
        0x0t
        -0x40t
        0x72t
        0x54t
        -0x38t
        -0x6at
        0x3dt
        -0x1bt
        -0x48t
        0x4t
        -0x22t
        0x67t
        -0x3at
        -0x62t
        -0x62t
        0x1t
        0x30t
        -0x7at
        -0x54t
        0x73t
        0xct
        0x38t
        0x4ct
        0x2t
        -0x2t
        0x1bt
        0x28t
        -0x42t
        0x46t
        -0x67t
        -0x10t
        0x6ct
        0x7t
        0x1bt
        0x16t
        -0x1bt
        0x6at
        0x34t
        0x55t
        0xet
        -0x6dt
        0x45t
        0x6ft
        -0x57t
        -0x31t
        -0x59t
        -0x52t
        0x28t
        0x76t
        0x10t
        -0x3t
        -0x16t
        0x29t
        0x37t
        0xft
        0x45t
        0x4t
        0x66t
        0x6et
        -0x4bt
        -0x34t
        0x67t
        -0x12t
        0x74t
        0x69t
        -0x67t
        -0x54t
        -0x4et
        0x3ct
        -0x10t
        0x55t
        -0xbt
        -0x4ct
        0x29t
        0x30t
        0x6at
        -0x25t
        0x6t
        0x14t
        0x47t
        -0xft
        -0x56t
        0x30t
        0x74t
        0x39t
        -0x12t
        -0x7ct
        0x15t
        -0x6t
        -0x77t
        -0x7at
        -0x18t
        -0x6t
        0x19t
        -0x6ft
        -0x4at
        -0x15t
        0xft
        -0x3t
        -0x40t
        0x75t
        -0x31t
        -0x1ct
        0x38t
        -0x1ft
        0x6ft
        0x8t
        -0x5bt
        -0xet
        -0x7at
        -0x23t
        -0x75t
        -0x66t
        -0x6et
        0x3dt
        -0x20t
        0x41t
        -0x61t
        -0x33t
        0x7at
        0x6t
        -0x10t
        0x6dt
        -0x5dt
        -0x30t
        -0x1ft
        -0x77t
        0x62t
        -0x27t
        0x2t
        -0x7ft
        -0x7ft
        0x0t
        -0x64t
        0x3dt
        -0x18t
        -0x8t
        -0x79t
        -0x42t
        -0x4bt
        -0x7at
        -0x4bt
        0x50t
        -0x30t
        -0x64t
        0x55t
        0x39t
        0x29t
        -0x6at
        0x4bt
        0x3at
        -0x73t
        0xet
        -0x2ct
        0x3ct
        -0x62t
        0x1et
        -0x3ft
        0x3dt
        0x55t
        0xat
        -0x6at
        -0x43t
        0x76t
        -0x66t
        0x6ft
        -0x1dt
        -0x7t
        0x0t
        0x5bt
        0x6et
        0x2dt
        0x7t
        0x6ct
        0x42t
        -0x12t
        0x22t
        -0x31t
        0x42t
        -0x4dt
        -0x74t
        -0x10t
        -0x36t
        -0x59t
        -0x78t
        -0x67t
        -0x48t
        -0x3t
        -0x6ft
        0x5at
        0x55t
        0x41t
        0x3et
        0x1ct
        -0x7ct
        -0x63t
        -0x2ft
        0x67t
        0x67t
        -0x3t
        0x7et
        -0x3t
        0x31t
        -0x7dt
        -0x25t
        0x10t
        0x69t
        0x17t
        -0x20t
        0x4dt
        -0x7ft
        0x3dt
        0x7ct
        0x27t
        0x4at
        -0x6et
        0x68t
        -0x7ct
        -0x4ft
        0x4t
        -0x4ct
        -0x46t
        -0x2et
        0x1ct
        -0x4at
        0x78t
        -0x79t
        0x74t
        0x53t
        0x16t
        -0x74t
        0x77t
        -0x49t
        -0x4ft
        0x8t
        0x5bt
        0x56t
        -0x19t
        -0x52t
        -0x48t
        -0x33t
        0x52t
        -0x36t
        0x25t
        0x13t
        -0x2et
        0x6at
        0x51t
        0x43t
        0x70t
        0x38t
        -0x19t
        0x41t
        0x6dt
        0x60t
        0xat
        -0x2t
        0x18t
        -0x37t
        -0x78t
        -0x55t
        0x2t
        -0x7ft
        -0x80t
        0x79t
        0x2at
        0x2t
        -0x4dt
        0x5ft
        -0x2ct
        -0x74t
        -0x3dt
        0x75t
        0x5dt
        0x49t
        -0x23t
        0x45t
        -0x6ct
        -0x67t
        -0x71t
        0x21t
        -0x25t
        -0x7bt
        0x7bt
        -0x2at
        0x1et
        0x15t
        0x6ct
        0x43t
        0x51t
        0x3dt
        -0x55t
        0x59t
        -0x2ct
        -0x7dt
        0x4ft
        0x5et
        0x0t
        -0x1at
        0x64t
        0x1dt
        -0x66t
        -0x39t
        -0x28t
        0x75t
        0x49t
        0x3et
        -0x6et
        -0x23t
        0x31t
        -0x35t
        -0x75t
        -0x46t
        0x5bt
        0x3t
        -0x78t
        -0x5t
        0x7ft
        -0x7dt
        -0x5at
        -0x59t
        -0x71t
        0x60t
        -0x56t
        -0x29t
        0x6ct
        -0x34t
        -0x5et
        -0x79t
        -0x4t
        -0x4ft
        0x23t
        -0x58t
        -0xbt
        -0x6at
        0x2t
        -0x22t
        0x43t
        -0x5t
        -0x5et
        -0xat
        -0x76t
        -0x1et
        0x59t
        0x7t
        0x1ct
        0x6t
        -0x4ft
        0x4at
        -0x48t
        -0x5et
        -0x2bt
        -0x20t
        -0x54t
        -0x52t
        0x16t
        0x78t
        -0x12t
        -0x3dt
        0x49t
        -0x10t
        0x1t
        -0x7bt
        -0x5ft
        0x27t
        0x48t
        -0x45t
        0x7ft
        0x43t
        -0x29t
        0x20t
        0x14t
        0x38t
        0x51t
        0x58t
        0x49t
        -0xdt
        0x75t
        0x3dt
        -0x4et
        0x53t
        -0x68t
        -0x63t
        0x11t
        -0x53t
        0x62t
        0x7at
        0x57t
        0x53t
        0x8t
        -0x66t
        -0x2ft
        0x2t
        -0x7ft
        -0x7ft
        0x0t
        -0x13t
        0x3ft
        0x2ct
        -0xdt
        -0x66t
        0x44t
        -0x23t
        -0xet
        0x4t
        -0x6bt
        -0x69t
        0x6ct
        0x38t
        0x70t
        -0x10t
        0x78t
        0x16t
        0x37t
        -0x3at
        0x24t
        -0x2dt
        -0x1ft
        0x1ct
        0x5bt
        -0x59t
        0x50t
        0x1ft
        0x6bt
        0x71t
        -0x12t
        0x60t
        -0x27t
        0x74t
        0x48t
        0x54t
        0x3dt
        0x72t
        -0x6et
        0x7et
        -0x68t
        -0x51t
        -0x39t
        -0x64t
        0x71t
        -0x6at
        -0x12t
        0x3ct
        0x63t
        -0x44t
        0x3dt
        0x8t
        -0x5at
        -0x37t
        0x25t
        -0x1et
        -0x4dt
        0x54t
        0x17t
        -0x4et
        0x12t
        -0x4ft
        -0x74t
        0x5at
        0x74t
        0x43t
        -0x13t
        0x71t
        -0x67t
        -0x5bt
        0x61t
        -0x62t
        0x2t
        -0x44t
        0x5et
        0x68t
        -0x28t
        -0x8t
        0x79t
        -0x1et
        0x15t
        -0x1dt
        0x2at
        0x5t
        -0x6t
        0x5t
        0x76t
        -0x4bt
        -0x48t
        0x23t
        -0x21t
        -0x40t
        -0x4at
        -0x63t
        -0x67t
        -0x1ct
        0x10t
        -0x1bt
        0x64t
        -0x42t
        0x1ct
        0x3et
        0x11t
        0x55t
        0x1ct
        -0x7ft
        0x65t
        -0x41t
        0x6bt
        -0x54t
        0xct
        0x1ct
        -0x74t
        0x2ct
        -0x50t
        0x50t
        0x51t
        -0x76t
        0x76t
        0x65t
        0x59t
        0x3dt
        -0x33t
        -0x5ct
        0x62t
        -0x14t
        0x25t
        0x68t
        0x42t
    .end array-data

    nop

    :array_27a
    .array-data 1
        0x30t
        -0x7et
        0x1t
        0x22t
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0x1t
        0x5t
        0x0t
        0x3t
        -0x7et
        0x1t
        0xft
        0x0t
        0x30t
        -0x7et
        0x1t
        0xat
        0x2t
        -0x7et
        0x1t
        0x1t
        0x0t
        -0x4et
        -0x51t
        0x68t
        -0x17t
        0x22t
        0x17t
        -0x5ct
        0x10t
        -0x61t
        -0x56t
        -0x61t
        0x4et
        0x69t
        0xet
        -0x31t
        0x16t
        0x14t
        -0x6ct
        -0xat
        -0x38t
        -0x9t
        -0xet
        -0x1ct
        -0x3et
        0x45t
        0x65t
        -0x7dt
        -0x5dt
        0x63t
        -0x77t
        0x32t
        -0x80t
        -0x5dt
        -0x43t
        -0x41t
        0x7et
        0x4bt
        -0x16t
        -0x50t
        0x15t
        -0x1dt
        -0x6et
        0x5ft
        -0x69t
        -0x6bt
        -0x76t
        -0x1t
        0x56t
        0x5dt
        0x58t
        0x2dt
        0xdt
        -0x59t
        -0x75t
        -0x8t
        -0x16t
        -0x43t
        -0x4t
        -0x1t
        0x7t
        0x33t
        0x2ft
        -0x44t
        0x43t
        0x0t
        -0x1at
        0x1et
        0x46t
        -0x2at
        -0x7ft
        0x69t
        -0x3bt
        -0x1ft
        -0x60t
        0x54t
        -0x63t
        -0x6t
        -0xat
        -0x6t
        -0x31t
        0x0t
        -0x77t
        0x6et
        0x68t
        0x24t
        0x16t
        0x2t
        0x2ct
        -0x4ct
        -0x7ft
        0x22t
        0x2dt
        -0x59t
        0x30t
        -0x13t
        -0x10t
        -0x3at
        0x56t
        0x7dt
        0x59t
        -0xdt
        0x6dt
        0x4t
        -0x30t
        -0xft
        0x27t
        -0x4dt
        0x14t
        -0x1ct
        -0x45t
        0x11t
        0x58t
        0x1dt
        -0x32t
        0x6ft
        -0x3ct
        -0x76t
        -0x2dt
        -0x70t
        -0x57t
        -0x5bt
        -0x52t
        0x79t
        0x3ft
        0x57t
        -0x6ct
        -0x59t
        0x3at
        0x36t
        0x6t
        0x7t
        -0x6et
        0x5ft
        0x3bt
        0x63t
        -0x7t
        0x39t
        -0x21t
        -0x76t
        0x35t
        -0x54t
        -0x25t
        -0x6t
        0x38t
        -0x4dt
        0x41t
        0x2t
        -0x55t
        -0x2ft
        -0x47t
        -0x2ct
        0x19t
        -0x5et
        0x17t
        -0x8t
        0x3et
        0x2bt
        0x77t
        -0x7t
        0x62t
        0x5dt
        -0x2et
        -0x7et
        0x31t
        0x2at
        -0x20t
        0x40t
        -0x1et
        -0xft
        0x3ct
        0x3ct
        -0x79t
        0xct
        0x47t
        0x53t
        -0x3et
        0x4ft
        0x2bt
        -0x79t
        0x63t
        -0x13t
        0x71t
        0x68t
        0x75t
        0x8t
        0x2t
        -0x48t
        -0x68t
        0xct
        0x37t
        -0x19t
        -0x79t
        0x23t
        -0x13t
        0x53t
        -0xct
        0x18t
        -0x12t
        -0x5ft
        0x70t
        0x6at
        0x52t
        0x36t
        -0x12t
        0x18t
        0x6ft
        -0x44t
        -0x5ct
        -0x1et
        0x2ct
        -0x72t
        0x3ct
        0x3et
        -0x37t
        -0x6t
        -0x21t
        0x49t
        -0x78t
        0x11t
        -0x62t
        -0x67t
        0x11t
        -0x80t
        0x6ft
        0x8t
        0x6ft
        -0x68t
        0x5ct
        -0x4et
        0x51t
        -0x4at
        0x5et
        -0x66t
        0x41t
        0x44t
        -0x2dt
        0x47t
        -0xct
        0x65t
        0x66t
        0x72t
        0x20t
        0x6ft
        0x56t
        0x17t
        0x6et
        0x35t
        -0x6t
        -0x4ct
        -0x29t
        0x0t
        -0x17t
        0x52t
        0x12t
        0x3ct
        -0x11t
        0x2t
        0x3t
        0x1t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decrypt(Ljava/security/Key;[B)[B
    .registers 4
    .param p0, "privateKey"    # Ljava/security/Key;
    .param p1, "encryptedText"    # [B

    .line 302
    :try_start_0
    const-string v0, "RSA"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 303
    .local v0, "rsaCipher":Ljavax/crypto/Cipher;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 304
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_f

    return-object v1

    .line 305
    .end local v0    # "rsaCipher":Ljavax/crypto/Cipher;
    :catchall_f
    move-exception v0

    .line 307
    const/4 v0, 0x0

    return-object v0
.end method

.method private static decryptFromBase64(Ljava/security/Key;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "key"    # Ljava/security/Key;
    .param p1, "cipheredText"    # Ljava/lang/String;

    .line 296
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/sepunion/friends/util/UtilStringCrypto;->decrypt(Ljava/security/Key;[B)[B

    move-result-object v0

    .line 297
    .local v0, "afterDecrypting":[B
    invoke-static {v0}, Lcom/android/server/sepunion/friends/util/UtilStringCrypto;->stringify([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static decryption(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "data"    # Ljava/lang/String;

    .line 252
    :try_start_0
    sget-object v0, Lcom/android/server/sepunion/friends/util/UtilStringCrypto;->PRIVATE_KEY:[B

    invoke-static {v0}, Lcom/android/server/sepunion/friends/util/UtilStringCrypto;->getRSAPrivateKeyFromByte([B)Ljava/security/PrivateKey;

    move-result-object v0

    .line 253
    .local v0, "privateKey":Ljava/security/PrivateKey;
    invoke-static {v0, p0}, Lcom/android/server/sepunion/friends/util/UtilStringCrypto;->decryptFromBase64(Ljava/security/Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    return-object v1

    .line 254
    .end local v0    # "privateKey":Ljava/security/PrivateKey;
    :catchall_b
    move-exception v0

    .line 256
    const/4 v0, 0x0

    return-object v0
.end method

.method public static decryption([B)[B
    .registers 3
    .param p0, "data"    # [B

    .line 261
    :try_start_0
    sget-object v0, Lcom/android/server/sepunion/friends/util/UtilStringCrypto;->PRIVATE_KEY:[B

    invoke-static {v0}, Lcom/android/server/sepunion/friends/util/UtilStringCrypto;->getRSAPrivateKeyFromByte([B)Ljava/security/PrivateKey;

    move-result-object v0

    .line 262
    .local v0, "privateKey":Ljava/security/PrivateKey;
    invoke-static {v0, p0}, Lcom/android/server/sepunion/friends/util/UtilStringCrypto;->decrypt(Ljava/security/Key;[B)[B

    move-result-object v1
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    return-object v1

    .line 263
    .end local v0    # "privateKey":Ljava/security/PrivateKey;
    :catchall_b
    move-exception v0

    .line 265
    const/4 v0, 0x0

    return-object v0
.end method

.method private static encrypt(Ljava/security/Key;[B)[B
    .registers 4
    .param p0, "publicKey"    # Ljava/security/Key;
    .param p1, "toBeCiphered"    # [B

    .line 281
    :try_start_0
    const-string v0, "RSA"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 282
    .local v0, "rsaCipher":Ljavax/crypto/Cipher;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 283
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_f

    return-object v1

    .line 284
    .end local v0    # "rsaCipher":Ljavax/crypto/Cipher;
    :catchall_f
    move-exception v0

    .line 286
    const/4 v0, 0x0

    return-object v0
.end method

.method private static encryptToBase64(Ljava/security/Key;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "publicKey"    # Ljava/security/Key;
    .param p1, "data"    # Ljava/lang/String;

    .line 275
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/sepunion/friends/util/UtilStringCrypto;->encrypt(Ljava/security/Key;[B)[B

    move-result-object v0

    .line 276
    .local v0, "cipheredText":[B
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static encryption(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "data"    # Ljava/lang/String;

    .line 234
    :try_start_0
    sget-object v0, Lcom/android/server/sepunion/friends/util/UtilStringCrypto;->PUBLIC_KEY:[B

    invoke-static {v0}, Lcom/android/server/sepunion/friends/util/UtilStringCrypto;->getRSAPublicKeyFromByte([B)Ljava/security/PublicKey;

    move-result-object v0

    .line 235
    .local v0, "publicKey":Ljava/security/PublicKey;
    invoke-static {v0, p0}, Lcom/android/server/sepunion/friends/util/UtilStringCrypto;->encryptToBase64(Ljava/security/Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    return-object v1

    .line 236
    .end local v0    # "publicKey":Ljava/security/PublicKey;
    :catchall_b
    move-exception v0

    .line 238
    const/4 v0, 0x0

    return-object v0
.end method

.method public static encryption([B)[B
    .registers 3
    .param p0, "data"    # [B

    .line 243
    :try_start_0
    sget-object v0, Lcom/android/server/sepunion/friends/util/UtilStringCrypto;->PUBLIC_KEY:[B

    invoke-static {v0}, Lcom/android/server/sepunion/friends/util/UtilStringCrypto;->getRSAPublicKeyFromByte([B)Ljava/security/PublicKey;

    move-result-object v0

    .line 244
    .local v0, "publicKey":Ljava/security/PublicKey;
    invoke-static {v0, p0}, Lcom/android/server/sepunion/friends/util/UtilStringCrypto;->encrypt(Ljava/security/Key;[B)[B

    move-result-object v1
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    return-object v1

    .line 245
    .end local v0    # "publicKey":Ljava/security/PublicKey;
    :catchall_b
    move-exception v0

    .line 247
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getRSAPrivateKeyFromByte([B)Ljava/security/PrivateKey;
    .registers 4
    .param p0, "privateKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 290
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 291
    .local v0, "keyFactory":Ljava/security/KeyFactory;
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 292
    .local v1, "keySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v2

    return-object v2
.end method

.method private static getRSAPublicKeyFromByte([B)Ljava/security/PublicKey;
    .registers 4
    .param p0, "publicKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 269
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 270
    .local v0, "keyFactory":Ljava/security/KeyFactory;
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 271
    .local v1, "keySpec":Ljava/security/spec/X509EncodedKeySpec;
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    return-object v2
.end method

.method private static stringify(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "str"    # Ljava/lang/String;

    .line 315
    const-string v0, ""

    .line 316
    .local v0, "aux":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 316
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 319
    .end local v1    # "i":I
    :cond_1f
    return-object v0
.end method

.method private static stringify([B)Ljava/lang/String;
    .registers 2
    .param p0, "bytes"    # [B

    .line 311
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/android/server/sepunion/friends/util/UtilStringCrypto;->stringify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
