.class public final synthetic Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$J_ESRc306ndKYXbNY3e46XQq1Zs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$J_ESRc306ndKYXbNY3e46XQq1Zs;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$J_ESRc306ndKYXbNY3e46XQq1Zs;

    invoke-direct {v0}, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$J_ESRc306ndKYXbNY3e46XQq1Zs;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$J_ESRc306ndKYXbNY3e46XQq1Zs;->INSTANCE:Lcom/android/server/pm/-$$Lambda$CrossProfileAppsServiceImpl$J_ESRc306ndKYXbNY3e46XQq1Zs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    invoke-static {p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->lambda$findAllPackageNames$11(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
