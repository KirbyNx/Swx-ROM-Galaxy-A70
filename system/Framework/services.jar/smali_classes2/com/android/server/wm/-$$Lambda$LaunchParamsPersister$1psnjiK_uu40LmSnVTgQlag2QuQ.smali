.class public final synthetic Lcom/android/server/wm/-$$Lambda$LaunchParamsPersister$1psnjiK_uu40LmSnVTgQlag2QuQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$LaunchParamsPersister$1psnjiK_uu40LmSnVTgQlag2QuQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$LaunchParamsPersister$1psnjiK_uu40LmSnVTgQlag2QuQ;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$LaunchParamsPersister$1psnjiK_uu40LmSnVTgQlag2QuQ;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$LaunchParamsPersister$1psnjiK_uu40LmSnVTgQlag2QuQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$LaunchParamsPersister$1psnjiK_uu40LmSnVTgQlag2QuQ;

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

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/wm/LaunchParamsPersister;->lambda$addComponentNameToLaunchParamAffinityMapIfNotNull$1(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p1

    return-object p1
.end method
