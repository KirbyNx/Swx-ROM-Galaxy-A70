.class final Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;
.super Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;
.source "CocktailBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/CocktailBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CocktalBarLocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;)V
    .registers 2

    .line 135
    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;Lcom/android/server/cocktailbar/CocktailBarManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerService;
    .param p2, "x1"    # Lcom/android/server/cocktailbar/CocktailBarManagerService$1;

    .line 135
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;)V

    return-void
.end method


# virtual methods
.method public topAppWindowChanged(IZZ)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "isFullscreen"    # Z
    .param p3, "isImmersive"    # Z

    .line 154
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarService:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;
    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$200(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->topAppWindowChanged(IZZ)V

    .line 155
    return-void
.end method

.method public transientChanged(IZ)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "isShow"    # Z

    .line 159
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # getter for: Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarService:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;
    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$200(Lcom/android/server/cocktailbar/CocktailBarManagerService;)Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->transientChanged(IZ)V

    .line 160
    return-void
.end method

.method public turnOffWakupCocktailBarFromPowerManager(ILjava/lang/String;)V
    .registers 4
    .param p1, "flag"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # invokes: Lcom/android/server/cocktailbar/CocktailBarManagerService;->turnOffWakupCocktailBarFromPowerManagerInternal(ILjava/lang/String;)V
    invoke-static {v0, p1, p2}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$300(Lcom/android/server/cocktailbar/CocktailBarManagerService;ILjava/lang/String;)V

    .line 140
    return-void
.end method

.method public updateSysfsGripDisableFromWindowManager(Z)V
    .registers 3
    .param p1, "disable"    # Z

    .line 149
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # invokes: Lcom/android/server/cocktailbar/CocktailBarManagerService;->updateSysfsGripDisableFromWindowManagerInternal(Z)V
    invoke-static {v0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$500(Lcom/android/server/cocktailbar/CocktailBarManagerService;Z)V

    .line 150
    return-void
.end method

.method public wakupCocktailBarFromWindowManager(ZII)V
    .registers 5
    .param p1, "bEnable"    # Z
    .param p2, "keyCode"    # I
    .param p3, "reason"    # I

    .line 144
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    # invokes: Lcom/android/server/cocktailbar/CocktailBarManagerService;->wakupCocktailBarFromWindowManagerInternal(ZII)V
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerService;->access$400(Lcom/android/server/cocktailbar/CocktailBarManagerService;ZII)V

    .line 145
    return-void
.end method
