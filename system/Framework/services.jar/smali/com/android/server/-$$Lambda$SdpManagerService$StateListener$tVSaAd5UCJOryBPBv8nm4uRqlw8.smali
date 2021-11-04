.class public final synthetic Lcom/android/server/-$$Lambda$SdpManagerService$StateListener$tVSaAd5UCJOryBPBv8nm4uRqlw8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/SdpManagerService$StateListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/SdpManagerService$StateListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$SdpManagerService$StateListener$tVSaAd5UCJOryBPBv8nm4uRqlw8;->f$0:Lcom/android/server/SdpManagerService$StateListener;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/-$$Lambda$SdpManagerService$StateListener$tVSaAd5UCJOryBPBv8nm4uRqlw8;->f$0:Lcom/android/server/SdpManagerService$StateListener;

    check-cast p1, Landroid/os/IBinder;

    invoke-virtual {v0, p1}, Lcom/android/server/SdpManagerService$StateListener;->lambda$dispose$1$SdpManagerService$StateListener(Landroid/os/IBinder;)V

    return-void
.end method
