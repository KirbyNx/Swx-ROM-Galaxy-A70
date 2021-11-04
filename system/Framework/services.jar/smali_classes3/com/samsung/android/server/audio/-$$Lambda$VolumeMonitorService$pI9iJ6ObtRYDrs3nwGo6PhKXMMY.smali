.class public final synthetic Lcom/samsung/android/server/audio/-$$Lambda$VolumeMonitorService$pI9iJ6ObtRYDrs3nwGo6PhKXMMY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/audio/VolumeMonitorService;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/audio/VolumeMonitorService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/audio/-$$Lambda$VolumeMonitorService$pI9iJ6ObtRYDrs3nwGo6PhKXMMY;->f$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/server/audio/-$$Lambda$VolumeMonitorService$pI9iJ6ObtRYDrs3nwGo6PhKXMMY;->f$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    invoke-virtual {v0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->lambda$resetByDataClear$0$VolumeMonitorService()V

    return-void
.end method
