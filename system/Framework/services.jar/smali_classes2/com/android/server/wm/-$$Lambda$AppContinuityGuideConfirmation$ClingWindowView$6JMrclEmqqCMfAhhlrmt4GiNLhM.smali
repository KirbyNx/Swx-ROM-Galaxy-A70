.class public final synthetic Lcom/android/server/wm/-$$Lambda$AppContinuityGuideConfirmation$ClingWindowView$6JMrclEmqqCMfAhhlrmt4GiNLhM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$AppContinuityGuideConfirmation$ClingWindowView$6JMrclEmqqCMfAhhlrmt4GiNLhM;->f$0:Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$AppContinuityGuideConfirmation$ClingWindowView$6JMrclEmqqCMfAhhlrmt4GiNLhM;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$AppContinuityGuideConfirmation$ClingWindowView$6JMrclEmqqCMfAhhlrmt4GiNLhM;->f$0:Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$AppContinuityGuideConfirmation$ClingWindowView$6JMrclEmqqCMfAhhlrmt4GiNLhM;->f$1:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->lambda$onAttachedToWindow$2$AppContinuityGuideConfirmation$ClingWindowView(Landroid/view/View;)V

    return-void
.end method
