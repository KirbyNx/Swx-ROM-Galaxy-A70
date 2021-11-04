.class Lcom/android/server/sepunion/SemGoodCatchService$FeatureSettingsProvider;
.super Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;
.source "SemGoodCatchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/SemGoodCatchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeatureSettingsProvider"
.end annotation


# static fields
.field private static final FUNCTION:Ljava/lang/String; = "setting_changed"

.field private static final MODULE:Ljava/lang/String; = "SettingsProvider"


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/SemGoodCatchService;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService;)V
    .registers 3

    .line 922
    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSettingsProvider;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    .line 923
    const-string v0, "FeatureSettingsProvider"

    invoke-direct {p0, p1, v0}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;Ljava/lang/String;)V

    .line 924
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 960
    invoke-super {p0, p1}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->dump(Ljava/io/PrintWriter;)V

    .line 961
    return-void
.end method

.method public getSelectedSettingKey()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 927
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 928
    .local v0, "db_keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "db_key"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    .line 929
    .local v4, "projection":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 932
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_c
    iget-object v2, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSettingsProvider;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    # getter for: Lcom/android/server/sepunion/SemGoodCatchService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/server/sepunion/SemGoodCatchService;->access$1200(Lcom/android/server/sepunion/SemGoodCatchService;)Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSettingsProvider;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    # getter for: Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureSettingsProvider:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSettingsProvider;
    invoke-static {v3}, Lcom/android/server/sepunion/SemGoodCatchService;->access$400(Lcom/android/server/sepunion/SemGoodCatchService;)Lcom/android/server/sepunion/SemGoodCatchService$FeatureSettingsProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSettingsProvider;->getUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v8, v2

    .line 934
    const/4 v2, 0x0

    .line 935
    .local v2, "i":I
    if-eqz v8, :cond_43

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_43

    .line 936
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 939
    :cond_30
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 940
    add-int/lit8 v2, v2, 0x1

    .line 941
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_41} :catch_44

    if-nez v3, :cond_30

    .line 945
    .end local v2    # "i":I
    :cond_43
    goto :goto_5d

    .line 943
    :catch_44
    move-exception v1

    .line 944
    .local v1, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/sepunion/SemGoodCatchService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/SemGoodCatchService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSelectedSettingKey() error : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_5d
    if-eqz v8, :cond_62

    .line 947
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 949
    :cond_62
    # getter for: Lcom/android/server/sepunion/SemGoodCatchService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/SemGoodCatchService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSelectedSettingKey() returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " keys."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    return-object v0
.end method

.method public reset()V
    .registers 2

    .line 954
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSettingsProvider;->off()V

    .line 955
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSettingsProvider;->setUri(Landroid/net/Uri;)V

    .line 956
    return-void
.end method
