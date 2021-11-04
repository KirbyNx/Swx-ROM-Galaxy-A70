.class final Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;
.super Ljava/lang/Object;
.source "EdgeLightingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/edgelighting/EdgeLightingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SecurityPolicy"
.end annotation


# static fields
.field private static final PERMISSION_EDGE_LIGHTING_HOST:Ljava/lang/String; = "com.samsung.android.permission.EDGE_LIGHTING_HOST"


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1121
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->mContext:Landroid/content/Context;

    .line 1122
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1123
    return-void
.end method

.method static synthetic access$500(Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;
    .param p1, "x1"    # Ljava/lang/String;

    .line 1112
    invoke-direct {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->enforceCallingPermission(Ljava/lang/String;)V

    return-void
.end method

.method private enforceCallingPermission(Ljava/lang/String;)V
    .registers 8
    .param p1, "method"    # Ljava/lang/String;

    .line 1134
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1136
    .local v0, "uid":I
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "eng"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1137
    return-void

    .line 1140
    :cond_f
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v1

    if-nez v1, :cond_1e

    .line 1141
    return-void

    .line 1144
    :cond_1e
    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->access$600()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission denied:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " uid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", you need system uid or to be signed with the system certificate."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public enforceCallFromPackage(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1130
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1131
    return-void
.end method

.method public enforceCallingPermissionFromHost()V
    .registers 4

    .line 1126
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager$SecurityPolicy;->mContext:Landroid/content/Context;

    # getter for: Lcom/android/server/notification/edgelighting/EdgeLightingManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.permission.EDGE_LIGHTING_HOST"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    return-void
.end method
