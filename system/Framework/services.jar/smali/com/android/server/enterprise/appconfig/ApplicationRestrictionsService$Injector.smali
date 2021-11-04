.class Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService$Injector;
.super Ljava/lang/Object;
.source "ApplicationRestrictionsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService$Injector;->mContext:Landroid/content/Context;

    .line 100
    return-void
.end method


# virtual methods
.method getActivityManager()Landroid/app/ActivityManager;
    .registers 3

    .line 107
    iget-object v0, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService$Injector;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    return-object v0
.end method

.method getUserManager()Landroid/os/UserManager;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService$Injector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    return-object v0
.end method
