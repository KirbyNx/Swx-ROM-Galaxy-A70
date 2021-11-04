.class public final enum Lcom/android/server/AppSyncWrapper$SET_TYPE;
.super Ljava/lang/Enum;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppSyncWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SET_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/AppSyncWrapper$SET_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/AppSyncWrapper$SET_TYPE;

.field public static final enum APPSYNC3P_PACKAGES:Lcom/android/server/AppSyncWrapper$SET_TYPE;

.field public static final enum CSC_PACKAGES:Lcom/android/server/AppSyncWrapper$SET_TYPE;

.field public static final enum NONE:Lcom/android/server/AppSyncWrapper$SET_TYPE;

.field public static final enum PRELOADED_PACKAGES:Lcom/android/server/AppSyncWrapper$SET_TYPE;

.field public static final enum SUSPICIOUS_PACKAGES:Lcom/android/server/AppSyncWrapper$SET_TYPE;

.field public static final enum SUSPICIOUS_PACKAGES_FROM_CONFIG:Lcom/android/server/AppSyncWrapper$SET_TYPE;

.field public static final enum WHITELIST3P_PACKAGES:Lcom/android/server/AppSyncWrapper$SET_TYPE;

.field public static final enum WHITELIST3P_PACKAGES_FROM_CONFIG:Lcom/android/server/AppSyncWrapper$SET_TYPE;

.field public static final enum WHITELIST_PACKAGES:Lcom/android/server/AppSyncWrapper$SET_TYPE;

.field public static final enum WHITELIST_PACKAGES_FROM_CONFIG:Lcom/android/server/AppSyncWrapper$SET_TYPE;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 4525
    new-instance v0, Lcom/android/server/AppSyncWrapper$SET_TYPE;

    const-string v1, "APPSYNC3P_PACKAGES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/AppSyncWrapper$SET_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/AppSyncWrapper$SET_TYPE;->APPSYNC3P_PACKAGES:Lcom/android/server/AppSyncWrapper$SET_TYPE;

    .line 4526
    new-instance v0, Lcom/android/server/AppSyncWrapper$SET_TYPE;

    const-string v1, "SUSPICIOUS_PACKAGES"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/AppSyncWrapper$SET_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/AppSyncWrapper$SET_TYPE;->SUSPICIOUS_PACKAGES:Lcom/android/server/AppSyncWrapper$SET_TYPE;

    .line 4527
    new-instance v0, Lcom/android/server/AppSyncWrapper$SET_TYPE;

    const-string v1, "CSC_PACKAGES"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/AppSyncWrapper$SET_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/AppSyncWrapper$SET_TYPE;->CSC_PACKAGES:Lcom/android/server/AppSyncWrapper$SET_TYPE;

    .line 4528
    new-instance v0, Lcom/android/server/AppSyncWrapper$SET_TYPE;

    const-string v1, "WHITELIST_PACKAGES"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/server/AppSyncWrapper$SET_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/AppSyncWrapper$SET_TYPE;->WHITELIST_PACKAGES:Lcom/android/server/AppSyncWrapper$SET_TYPE;

    .line 4529
    new-instance v0, Lcom/android/server/AppSyncWrapper$SET_TYPE;

    const-string v1, "WHITELIST3P_PACKAGES"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/server/AppSyncWrapper$SET_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/AppSyncWrapper$SET_TYPE;->WHITELIST3P_PACKAGES:Lcom/android/server/AppSyncWrapper$SET_TYPE;

    .line 4530
    new-instance v0, Lcom/android/server/AppSyncWrapper$SET_TYPE;

    const-string v1, "PRELOADED_PACKAGES"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/server/AppSyncWrapper$SET_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/AppSyncWrapper$SET_TYPE;->PRELOADED_PACKAGES:Lcom/android/server/AppSyncWrapper$SET_TYPE;

    .line 4532
    new-instance v0, Lcom/android/server/AppSyncWrapper$SET_TYPE;

    const-string v1, "SUSPICIOUS_PACKAGES_FROM_CONFIG"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/server/AppSyncWrapper$SET_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/AppSyncWrapper$SET_TYPE;->SUSPICIOUS_PACKAGES_FROM_CONFIG:Lcom/android/server/AppSyncWrapper$SET_TYPE;

    .line 4533
    new-instance v0, Lcom/android/server/AppSyncWrapper$SET_TYPE;

    const-string v1, "WHITELIST_PACKAGES_FROM_CONFIG"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/android/server/AppSyncWrapper$SET_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/AppSyncWrapper$SET_TYPE;->WHITELIST_PACKAGES_FROM_CONFIG:Lcom/android/server/AppSyncWrapper$SET_TYPE;

    .line 4534
    new-instance v0, Lcom/android/server/AppSyncWrapper$SET_TYPE;

    const-string v1, "WHITELIST3P_PACKAGES_FROM_CONFIG"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/android/server/AppSyncWrapper$SET_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/AppSyncWrapper$SET_TYPE;->WHITELIST3P_PACKAGES_FROM_CONFIG:Lcom/android/server/AppSyncWrapper$SET_TYPE;

    .line 4535
    new-instance v0, Lcom/android/server/AppSyncWrapper$SET_TYPE;

    const-string v1, "NONE"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/android/server/AppSyncWrapper$SET_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/AppSyncWrapper$SET_TYPE;->NONE:Lcom/android/server/AppSyncWrapper$SET_TYPE;

    .line 4524
    const/16 v1, 0xa

    new-array v1, v1, [Lcom/android/server/AppSyncWrapper$SET_TYPE;

    sget-object v12, Lcom/android/server/AppSyncWrapper$SET_TYPE;->APPSYNC3P_PACKAGES:Lcom/android/server/AppSyncWrapper$SET_TYPE;

    aput-object v12, v1, v2

    sget-object v2, Lcom/android/server/AppSyncWrapper$SET_TYPE;->SUSPICIOUS_PACKAGES:Lcom/android/server/AppSyncWrapper$SET_TYPE;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/AppSyncWrapper$SET_TYPE;->CSC_PACKAGES:Lcom/android/server/AppSyncWrapper$SET_TYPE;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/server/AppSyncWrapper$SET_TYPE;->WHITELIST_PACKAGES:Lcom/android/server/AppSyncWrapper$SET_TYPE;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/server/AppSyncWrapper$SET_TYPE;->WHITELIST3P_PACKAGES:Lcom/android/server/AppSyncWrapper$SET_TYPE;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/server/AppSyncWrapper$SET_TYPE;->PRELOADED_PACKAGES:Lcom/android/server/AppSyncWrapper$SET_TYPE;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/server/AppSyncWrapper$SET_TYPE;->SUSPICIOUS_PACKAGES_FROM_CONFIG:Lcom/android/server/AppSyncWrapper$SET_TYPE;

    aput-object v2, v1, v8

    sget-object v2, Lcom/android/server/AppSyncWrapper$SET_TYPE;->WHITELIST_PACKAGES_FROM_CONFIG:Lcom/android/server/AppSyncWrapper$SET_TYPE;

    aput-object v2, v1, v9

    sget-object v2, Lcom/android/server/AppSyncWrapper$SET_TYPE;->WHITELIST3P_PACKAGES_FROM_CONFIG:Lcom/android/server/AppSyncWrapper$SET_TYPE;

    aput-object v2, v1, v10

    aput-object v0, v1, v11

    sput-object v1, Lcom/android/server/AppSyncWrapper$SET_TYPE;->$VALUES:[Lcom/android/server/AppSyncWrapper$SET_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4524
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/AppSyncWrapper$SET_TYPE;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 4524
    const-class v0, Lcom/android/server/AppSyncWrapper$SET_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppSyncWrapper$SET_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/android/server/AppSyncWrapper$SET_TYPE;
    .registers 1

    .line 4524
    sget-object v0, Lcom/android/server/AppSyncWrapper$SET_TYPE;->$VALUES:[Lcom/android/server/AppSyncWrapper$SET_TYPE;

    invoke-virtual {v0}, [Lcom/android/server/AppSyncWrapper$SET_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/AppSyncWrapper$SET_TYPE;

    return-object v0
.end method
