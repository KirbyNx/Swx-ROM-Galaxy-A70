.class Lcom/android/server/enterprise/restriction/DeveloperModeSettings$SystemPropPoker;
.super Landroid/os/AsyncTask;
.source "DeveloperModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/restriction/DeveloperModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SystemPropPoker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 560
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 560
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings$SystemPropPoker;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 12
    .param p1, "params"    # [Ljava/lang/Void;

    .line 565
    const-string v0, "DeveloperModeSettings"

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "Start System Poker - ServiceManager.listServices()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-static {}, Landroid/os/ServiceManager;->listServices()[Ljava/lang/String;

    move-result-object v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_5a

    .line 569
    .local v2, "services":[Ljava/lang/String;
    nop

    .line 570
    if-eqz v2, :cond_54

    array-length v3, v2

    if-nez v3, :cond_13

    goto :goto_54

    .line 574
    :cond_13
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_16
    if-ge v5, v3, :cond_53

    aget-object v6, v2, v5

    .line 577
    .local v6, "service":Ljava/lang/String;
    if-eqz v6, :cond_4f

    .line 578
    :try_start_1c
    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    .line 579
    .local v7, "obj":Landroid/os/IBinder;
    if-eqz v7, :cond_4f

    .line 580
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8

    .line 581
    .local v8, "data":Landroid/os/Parcel;
    const v9, 0x5f535052

    invoke-interface {v7, v9, v8, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 582
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2f} :catch_4e
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2f} :catch_30

    goto :goto_4f

    .line 586
    .end local v7    # "obj":Landroid/os/IBinder;
    .end local v8    # "data":Landroid/os/Parcel;
    :catch_30
    move-exception v7

    .line 587
    .local v7, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Someone wrote a bad service \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\' that doesn\'t like to be poked: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50

    .line 585
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_4e
    move-exception v7

    .line 589
    :cond_4f
    :goto_4f
    nop

    .line 574
    .end local v6    # "service":Ljava/lang/String;
    :goto_50
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 591
    :cond_53
    return-object v1

    .line 571
    :cond_54
    :goto_54
    const-string v3, " System Poker - Failed to get services"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    return-object v1

    .line 567
    .end local v2    # "services":[Ljava/lang/String;
    :catch_5a
    move-exception v0

    .line 568
    .local v0, "e":Ljava/lang/Exception;
    return-object v1
.end method
