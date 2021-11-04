.class final enum Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;
.super Ljava/lang/Enum;
.source "GnssConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "GLP_CODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;

.field public static final enum BATCHING_STARTED:Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;

.field public static final enum BATCHING_STOPPED:Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;

.field public static final enum GEOFENCE_ADDED:Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;

.field public static final enum GEOFENCE_PAUSED:Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;

.field public static final enum GEOFENCE_REMOVED:Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;

.field public static final enum GEOFENCE_RESUMED:Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;

.field public static final enum START_NAVIGATING:Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;

.field public static final enum STOP_NAVIGATING:Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;

.field public static final enum UPDATE_REQUIREMENTS:Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 42
    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;

    const-string v1, "GEOFENCE_ADDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;->GEOFENCE_ADDED:Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;

    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;

    const-string v1, "GEOFENCE_REMOVED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;->GEOFENCE_REMOVED:Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;

    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;

    const-string v1, "GEOFENCE_PAUSED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;->GEOFENCE_PAUSED:Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;

    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;

    const-string v1, "GEOFENCE_RESUMED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;->GEOFENCE_RESUMED:Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;

    .line 43
    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;

    const-string v1, "BATCHING_STARTED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;->BATCHING_STARTED:Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;

    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;

    const-string v1, "BATCHING_STOPPED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;->BATCHING_STOPPED:Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;

    .line 44
    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;

    const-string v1, "UPDATE_REQUIREMENTS"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;->UPDATE_REQUIREMENTS:Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;

    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;

    const-string v1, "START_NAVIGATING"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;->START_NAVIGATING:Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;

    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;

    const-string v1, "STOP_NAVIGATING"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;->STOP_NAVIGATING:Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;

    .line 41
    const/16 v1, 0x9

    new-array v1, v1, [Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;

    sget-object v11, Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;->GEOFENCE_ADDED:Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;

    aput-object v11, v1, v2

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;->GEOFENCE_REMOVED:Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;->GEOFENCE_PAUSED:Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;->GEOFENCE_RESUMED:Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;->BATCHING_STARTED:Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;->BATCHING_STOPPED:Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;->UPDATE_REQUIREMENTS:Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;

    aput-object v2, v1, v8

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;->START_NAVIGATING:Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;

    aput-object v2, v1, v9

    aput-object v0, v1, v10

    sput-object v1, Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;->$VALUES:[Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 41
    const-class v0, Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;

    return-object v0
.end method

.method public static values()[Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;
    .registers 1

    .line 41
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;->$VALUES:[Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;

    invoke-virtual {v0}, [Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/location/gnss/GnssConstants$GLP_CODE;

    return-object v0
.end method
