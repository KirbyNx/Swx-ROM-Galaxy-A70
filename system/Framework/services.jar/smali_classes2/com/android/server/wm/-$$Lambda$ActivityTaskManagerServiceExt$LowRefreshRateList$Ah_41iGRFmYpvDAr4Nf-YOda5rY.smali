.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$LowRefreshRateList$Ah_41iGRFmYpvDAr4Nf-YOda5rY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt$LowRefreshRateList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt$LowRefreshRateList;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$LowRefreshRateList$Ah_41iGRFmYpvDAr4Nf-YOda5rY;->f$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt$LowRefreshRateList;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$LowRefreshRateList$Ah_41iGRFmYpvDAr4Nf-YOda5rY;->f$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt$LowRefreshRateList;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt$LowRefreshRateList;->lambda$updateBlockList$0$ActivityTaskManagerServiceExt$LowRefreshRateList()V

    return-void
.end method
