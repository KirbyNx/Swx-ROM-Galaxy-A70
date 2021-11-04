.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$yT1-aMIiWt_VZVW2t-68ANkFwpY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/devicepolicy/-$$Lambda$yT1-aMIiWt_VZVW2t-68ANkFwpY;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/devicepolicy/-$$Lambda$yT1-aMIiWt_VZVW2t-68ANkFwpY;

    invoke-direct {v0}, Lcom/android/server/devicepolicy/-$$Lambda$yT1-aMIiWt_VZVW2t-68ANkFwpY;-><init>()V

    sput-object v0, Lcom/android/server/devicepolicy/-$$Lambda$yT1-aMIiWt_VZVW2t-68ANkFwpY;->INSTANCE:Lcom/android/server/devicepolicy/-$$Lambda$yT1-aMIiWt_VZVW2t-68ANkFwpY;

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

    invoke-virtual {p1}, Lcom/android/server/SdpManagerService;->IsInitialized()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
