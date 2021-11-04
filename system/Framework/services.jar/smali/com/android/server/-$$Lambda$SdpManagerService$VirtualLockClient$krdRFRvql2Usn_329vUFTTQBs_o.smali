.class public final synthetic Lcom/android/server/-$$Lambda$SdpManagerService$VirtualLockClient$krdRFRvql2Usn_329vUFTTQBs_o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$SdpManagerService$VirtualLockClient$krdRFRvql2Usn_329vUFTTQBs_o;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/-$$Lambda$SdpManagerService$VirtualLockClient$krdRFRvql2Usn_329vUFTTQBs_o;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/-$$Lambda$SdpManagerService$VirtualLockClient$krdRFRvql2Usn_329vUFTTQBs_o;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/-$$Lambda$SdpManagerService$VirtualLockClient$krdRFRvql2Usn_329vUFTTQBs_o;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/-$$Lambda$SdpManagerService$VirtualLockClient$krdRFRvql2Usn_329vUFTTQBs_o;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/-$$Lambda$SdpManagerService$VirtualLockClient$krdRFRvql2Usn_329vUFTTQBs_o;->f$2:I

    check-cast p1, Lcom/android/internal/widget/ILockSettings;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/SdpManagerService$VirtualLockClient;->lambda$setPassword$0(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/widget/ILockSettings;)V

    return-void
.end method
