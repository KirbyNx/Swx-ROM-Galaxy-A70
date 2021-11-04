.class Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHolder;
.super Ljava/lang/Object;
.source "MARsDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/mars/database/MARsDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MARsDBManagerHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/server/am/mars/database/MARsDBManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 63
    new-instance v0, Lcom/android/server/am/mars/database/MARsDBManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/database/MARsDBManager;-><init>(Lcom/android/server/am/mars/database/MARsDBManager$1;)V

    sput-object v0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/android/server/am/mars/database/MARsDBManager;
    .registers 1

    .line 62
    sget-object v0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBManager;

    return-object v0
.end method
