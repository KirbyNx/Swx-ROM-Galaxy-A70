.class public final synthetic Lcom/android/server/locksettings/-$$Lambda$JIWbX_azTAlijAj38hl2CMyYIKU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/locksettings/-$$Lambda$JIWbX_azTAlijAj38hl2CMyYIKU;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/locksettings/-$$Lambda$JIWbX_azTAlijAj38hl2CMyYIKU;

    invoke-direct {v0}, Lcom/android/server/locksettings/-$$Lambda$JIWbX_azTAlijAj38hl2CMyYIKU;-><init>()V

    sput-object v0, Lcom/android/server/locksettings/-$$Lambda$JIWbX_azTAlijAj38hl2CMyYIKU;->INSTANCE:Lcom/android/server/locksettings/-$$Lambda$JIWbX_azTAlijAj38hl2CMyYIKU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/server/SdpManagerService;

    invoke-virtual {p1}, Lcom/android/server/SdpManagerService;->getVirtualUsers()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
