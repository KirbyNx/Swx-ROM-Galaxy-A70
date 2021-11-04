.class public final synthetic Lcom/android/server/-$$Lambda$SdpManagerService$SdpManagerProxy$TtzXkITElFQdTSVMTf33qIBhSP4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$SdpManagerService$SdpManagerProxy$TtzXkITElFQdTSVMTf33qIBhSP4;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/android/server/-$$Lambda$SdpManagerService$SdpManagerProxy$TtzXkITElFQdTSVMTf33qIBhSP4;->f$0:Ljava/lang/String;

    check-cast p1, Landroid/os/storage/StorageManager;

    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService$SdpManagerProxy;->lambda$isSensitive$1(Ljava/lang/String;Landroid/os/storage/StorageManager;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
