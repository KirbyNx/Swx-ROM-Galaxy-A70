.class public final synthetic Lcom/android/server/wm/-$$Lambda$MultiTaskingController$MultiTaskingBinder$Cv_Sss6hqvngBS6gytcNXlVr2-8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$MultiTaskingBinder$Cv_Sss6hqvngBS6gytcNXlVr2-8;->f$0:Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$MultiTaskingController$MultiTaskingBinder$Cv_Sss6hqvngBS6gytcNXlVr2-8;->f$0:Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiTaskingController$MultiTaskingBinder;->lambda$disableDividerPanelFirstAutoOpen$4$MultiTaskingController$MultiTaskingBinder()V

    return-void
.end method
