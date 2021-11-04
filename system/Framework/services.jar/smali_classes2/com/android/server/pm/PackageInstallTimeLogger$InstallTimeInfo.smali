.class final Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;
.super Ljava/lang/Object;
.source "PackageInstallTimeLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallTimeLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InstallTimeInfo"
.end annotation


# instance fields
.field mBaseTime:J

.field final mInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mLastTime:J

.field mPkgName:Ljava/lang/String;

.field mUserId:I

.field mVersion:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/PackageInstallTimeLogger;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/PackageInstallTimeLogger;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->this$0:Lcom/android/server/pm/PackageInstallTimeLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mInfoList:Ljava/util/ArrayList;

    .line 63
    const-string p1, ""

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mPkgName:Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mVersion:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageInstallTimeLogger;Lcom/android/server/pm/PackageInstallTimeLogger$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/pm/PackageInstallTimeLogger;
    .param p2, "x1"    # Lcom/android/server/pm/PackageInstallTimeLogger$1;

    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;-><init>(Lcom/android/server/pm/PackageInstallTimeLogger;)V

    return-void
.end method
