.class Lcom/android/server/ipm/chimera/AppListBuilder$OnScreenWindowCriteria;
.super Ljava/lang/Object;
.source "AppListBuilder.java"

# interfaces
.implements Lcom/android/server/ipm/chimera/AppListBuilder$ChimeraAppInfoCriteria;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/chimera/AppListBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnScreenWindowCriteria"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ipm/chimera/AppListBuilder;


# direct methods
.method constructor <init>(Lcom/android/server/ipm/chimera/AppListBuilder;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ipm/chimera/AppListBuilder;

    .line 263
    iput-object p1, p0, Lcom/android/server/ipm/chimera/AppListBuilder$OnScreenWindowCriteria;->this$0:Lcom/android/server/ipm/chimera/AppListBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check(Lcom/android/server/ipm/chimera/ChimeraAppInfo;)Z
    .registers 4
    .param p1, "chimeraAppInfo"    # Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    .line 267
    iget-object v0, p0, Lcom/android/server/ipm/chimera/AppListBuilder$OnScreenWindowCriteria;->this$0:Lcom/android/server/ipm/chimera/AppListBuilder;

    iget-object v0, v0, Lcom/android/server/ipm/chimera/AppListBuilder;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget v1, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->uid:I

    invoke-interface {v0, v1}, Lcom/android/server/ipm/chimera/SystemRepository;->isOnScreenWindow(I)Z

    move-result v0

    return v0
.end method
