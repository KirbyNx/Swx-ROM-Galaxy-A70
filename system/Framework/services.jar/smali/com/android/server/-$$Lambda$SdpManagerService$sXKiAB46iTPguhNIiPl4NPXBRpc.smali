.class public final synthetic Lcom/android/server/-$$Lambda$SdpManagerService$sXKiAB46iTPguhNIiPl4NPXBRpc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/-$$Lambda$SdpManagerService$sXKiAB46iTPguhNIiPl4NPXBRpc;->f$0:I

    iput-object p2, p0, Lcom/android/server/-$$Lambda$SdpManagerService$sXKiAB46iTPguhNIiPl4NPXBRpc;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/-$$Lambda$SdpManagerService$sXKiAB46iTPguhNIiPl4NPXBRpc;->f$2:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget v0, p0, Lcom/android/server/-$$Lambda$SdpManagerService$sXKiAB46iTPguhNIiPl4NPXBRpc;->f$0:I

    iget-object v1, p0, Lcom/android/server/-$$Lambda$SdpManagerService$sXKiAB46iTPguhNIiPl4NPXBRpc;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/-$$Lambda$SdpManagerService$sXKiAB46iTPguhNIiPl4NPXBRpc;->f$2:I

    check-cast p1, Lcom/android/internal/widget/ILockSettings;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/SdpManagerService;->lambda$checkCredential$5(ILjava/lang/String;ILcom/android/internal/widget/ILockSettings;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p1

    return-object p1
.end method
