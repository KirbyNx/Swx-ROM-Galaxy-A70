.class public final synthetic Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$7s2_dtMUrYgHtM2Mpc1sS0XgWCw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/AudioDeviceInventory;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioDeviceInventory;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$7s2_dtMUrYgHtM2Mpc1sS0XgWCw;->f$0:Lcom/android/server/audio/AudioDeviceInventory;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/audio/-$$Lambda$AudioDeviceInventory$7s2_dtMUrYgHtM2Mpc1sS0XgWCw;->f$0:Lcom/android/server/audio/AudioDeviceInventory;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->lambda$disconnectHearingAid$9$AudioDeviceInventory(Ljava/lang/String;)V

    return-void
.end method
