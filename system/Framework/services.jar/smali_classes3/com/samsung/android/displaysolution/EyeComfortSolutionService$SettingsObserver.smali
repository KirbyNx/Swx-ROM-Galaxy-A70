.class final Lcom/samsung/android/displaysolution/EyeComfortSolutionService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "EyeComfortSolutionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/displaysolution/EyeComfortSolutionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .line 572
    iput-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 573
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 574
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 577
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    # invokes: Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->setting_is_changed()V
    invoke-static {v0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->access$100(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)V

    .line 578
    return-void
.end method
