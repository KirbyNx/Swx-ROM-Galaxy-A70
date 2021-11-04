.class public final synthetic Lcom/android/server/-$$Lambda$SdpManagerService$SdpManagerProxy$uFIrGMuzDZwAWR7bIXEz4HzhoTQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/-$$Lambda$SdpManagerService$SdpManagerProxy$uFIrGMuzDZwAWR7bIXEz4HzhoTQ;->f$0:I

    iput-object p2, p0, Lcom/android/server/-$$Lambda$SdpManagerService$SdpManagerProxy$uFIrGMuzDZwAWR7bIXEz4HzhoTQ;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget v0, p0, Lcom/android/server/-$$Lambda$SdpManagerService$SdpManagerProxy$uFIrGMuzDZwAWR7bIXEz4HzhoTQ;->f$0:I

    iget-object v1, p0, Lcom/android/server/-$$Lambda$SdpManagerService$SdpManagerProxy$uFIrGMuzDZwAWR7bIXEz4HzhoTQ;->f$1:Ljava/lang/String;

    check-cast p1, Landroid/os/storage/StorageManager;

    invoke-static {v0, v1, p1}, Lcom/android/server/SdpManagerService$SdpManagerProxy;->lambda$setSensitive$0(ILjava/lang/String;Landroid/os/storage/StorageManager;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
