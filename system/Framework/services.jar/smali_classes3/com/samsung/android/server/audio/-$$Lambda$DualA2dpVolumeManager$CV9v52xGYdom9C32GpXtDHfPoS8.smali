.class public final synthetic Lcom/samsung/android/server/audio/-$$Lambda$DualA2dpVolumeManager$CV9v52xGYdom9C32GpXtDHfPoS8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/audio/DualA2dpVolumeManager;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/audio/-$$Lambda$DualA2dpVolumeManager$CV9v52xGYdom9C32GpXtDHfPoS8;->f$0:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    iput p2, p0, Lcom/samsung/android/server/audio/-$$Lambda$DualA2dpVolumeManager$CV9v52xGYdom9C32GpXtDHfPoS8;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/server/audio/-$$Lambda$DualA2dpVolumeManager$CV9v52xGYdom9C32GpXtDHfPoS8;->f$0:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    iget v1, p0, Lcom/samsung/android/server/audio/-$$Lambda$DualA2dpVolumeManager$CV9v52xGYdom9C32GpXtDHfPoS8;->f$1:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->lambda$new$0$DualA2dpVolumeManager(I)V

    return-void
.end method
