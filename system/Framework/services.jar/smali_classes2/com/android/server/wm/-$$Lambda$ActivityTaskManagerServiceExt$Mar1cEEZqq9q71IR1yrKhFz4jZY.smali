.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$Mar1cEEZqq9q71IR1yrKhFz4jZY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Z

.field public final synthetic f$4:Z

.field public final synthetic f$5:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt;Ljava/lang/String;IZZLandroid/content/Intent;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$Mar1cEEZqq9q71IR1yrKhFz4jZY;->f$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$Mar1cEEZqq9q71IR1yrKhFz4jZY;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$Mar1cEEZqq9q71IR1yrKhFz4jZY;->f$2:I

    iput-boolean p4, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$Mar1cEEZqq9q71IR1yrKhFz4jZY;->f$3:Z

    iput-boolean p5, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$Mar1cEEZqq9q71IR1yrKhFz4jZY;->f$4:Z

    iput-object p6, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$Mar1cEEZqq9q71IR1yrKhFz4jZY;->f$5:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$Mar1cEEZqq9q71IR1yrKhFz4jZY;->f$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$Mar1cEEZqq9q71IR1yrKhFz4jZY;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$Mar1cEEZqq9q71IR1yrKhFz4jZY;->f$2:I

    iget-boolean v3, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$Mar1cEEZqq9q71IR1yrKhFz4jZY;->f$3:Z

    iget-boolean v4, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$Mar1cEEZqq9q71IR1yrKhFz4jZY;->f$4:Z

    iget-object v5, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$Mar1cEEZqq9q71IR1yrKhFz4jZY;->f$5:Landroid/content/Intent;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->lambda$checkAppLockState$8$ActivityTaskManagerServiceExt(Ljava/lang/String;IZZLandroid/content/Intent;)V

    return-void
.end method
