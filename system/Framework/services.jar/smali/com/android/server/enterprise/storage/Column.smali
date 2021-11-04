.class public Lcom/android/server/enterprise/storage/Column;
.super Ljava/lang/Object;
.source "Column.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/storage/Column$DATA_TYPE;
    }
.end annotation


# instance fields
.field public mColumnName:Ljava/lang/String;

.field public mColumnType:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

.field public mDefaultValue:Ljava/lang/String;

.field public mIsPrimaryKey:Z

.field public mProperties:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/server/enterprise/storage/Column$DATA_TYPE;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "colName"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/android/server/enterprise/storage/Column$DATA_TYPE;
    .param p3, "isKey"    # Z
    .param p4, "props"    # Ljava/lang/String;
    .param p5, "defaultValue"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/server/enterprise/storage/Column;->mColumnName:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/android/server/enterprise/storage/Column;->mColumnType:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    .line 52
    iput-boolean p3, p0, Lcom/android/server/enterprise/storage/Column;->mIsPrimaryKey:Z

    .line 53
    iput-object p4, p0, Lcom/android/server/enterprise/storage/Column;->mProperties:Ljava/lang/String;

    .line 54
    iput-object p5, p0, Lcom/android/server/enterprise/storage/Column;->mDefaultValue:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public getSQLDeclaration()Ljava/lang/String;
    .registers 8

    .line 58
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/enterprise/storage/Column;->mColumnName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/server/enterprise/storage/Column;->mColumnType:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    invoke-virtual {v2}, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "%s %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "ret":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/enterprise/storage/Column;->mProperties:Ljava/lang/String;

    if-eqz v5, :cond_25

    .line 61
    new-array v6, v0, [Ljava/lang/Object;

    aput-object v1, v6, v3

    aput-object v5, v6, v4

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 64
    :cond_25
    iget-object v2, p0, Lcom/android/server/enterprise/storage/Column;->mDefaultValue:Ljava/lang/String;

    if-eqz v2, :cond_35

    .line 65
    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v3

    aput-object v2, v0, v4

    const-string v2, "%s DEFAULT %s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 68
    :cond_35
    return-object v1
.end method
