.class Lcom/android/server/ipm/chimera/AppListBuilder$ImportantAdjWithSystemUidCriteria;
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
    name = "ImportantAdjWithSystemUidCriteria"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ipm/chimera/AppListBuilder;


# direct methods
.method constructor <init>(Lcom/android/server/ipm/chimera/AppListBuilder;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ipm/chimera/AppListBuilder;

    .line 304
    iput-object p1, p0, Lcom/android/server/ipm/chimera/AppListBuilder$ImportantAdjWithSystemUidCriteria;->this$0:Lcom/android/server/ipm/chimera/AppListBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check(Lcom/android/server/ipm/chimera/ChimeraAppInfo;)Z
    .registers 3
    .param p1, "chimeraAppInfo"    # Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    .line 308
    const/4 v0, 0x0

    return v0
.end method
