.class public final synthetic Lcom/samsung/android/server/audio/-$$Lambda$VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler$vkKAOwv9TZ4vlQ_9jMRk50xd1GQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/audio/-$$Lambda$VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler$vkKAOwv9TZ4vlQ_9jMRk50xd1GQ;->f$0:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/server/audio/-$$Lambda$VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler$vkKAOwv9TZ4vlQ_9jMRk50xd1GQ;->f$0:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;

    invoke-virtual {v0}, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;->lambda$handleMessage$0$VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler()V

    return-void
.end method
