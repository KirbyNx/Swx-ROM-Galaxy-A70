.class public final synthetic Lcom/android/server/audio/-$$Lambda$AudioService$NjAdVXAzfPM5pCyZrDtOA3V00ew;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/AudioService;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService;IIII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/-$$Lambda$AudioService$NjAdVXAzfPM5pCyZrDtOA3V00ew;->f$0:Lcom/android/server/audio/AudioService;

    iput p2, p0, Lcom/android/server/audio/-$$Lambda$AudioService$NjAdVXAzfPM5pCyZrDtOA3V00ew;->f$1:I

    iput p3, p0, Lcom/android/server/audio/-$$Lambda$AudioService$NjAdVXAzfPM5pCyZrDtOA3V00ew;->f$2:I

    iput p4, p0, Lcom/android/server/audio/-$$Lambda$AudioService$NjAdVXAzfPM5pCyZrDtOA3V00ew;->f$3:I

    iput p5, p0, Lcom/android/server/audio/-$$Lambda$AudioService$NjAdVXAzfPM5pCyZrDtOA3V00ew;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/audio/-$$Lambda$AudioService$NjAdVXAzfPM5pCyZrDtOA3V00ew;->f$0:Lcom/android/server/audio/AudioService;

    iget v1, p0, Lcom/android/server/audio/-$$Lambda$AudioService$NjAdVXAzfPM5pCyZrDtOA3V00ew;->f$1:I

    iget v2, p0, Lcom/android/server/audio/-$$Lambda$AudioService$NjAdVXAzfPM5pCyZrDtOA3V00ew;->f$2:I

    iget v3, p0, Lcom/android/server/audio/-$$Lambda$AudioService$NjAdVXAzfPM5pCyZrDtOA3V00ew;->f$3:I

    iget v4, p0, Lcom/android/server/audio/-$$Lambda$AudioService$NjAdVXAzfPM5pCyZrDtOA3V00ew;->f$4:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/audio/AudioService;->lambda$sendBroadcastNoisyIntent$4$AudioService(IIII)V

    return-void
.end method
