.class Lpubgm/loader/activity/MainActivity$16;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpubgm/loader/activity/MainActivity;->CountTimerAccout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpubgm/loader/activity/MainActivity;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lpubgm/loader/activity/MainActivity;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lpubgm/loader/activity/MainActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1695
    iput-object p1, p0, Lpubgm/loader/activity/MainActivity$16;->this$0:Lpubgm/loader/activity/MainActivity;

    iput-object p2, p0, Lpubgm/loader/activity/MainActivity$16;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 31

    move-object/from16 v1, p0

    .line 1699
    const v2, 0x7f0a0314

    const v3, 0x7f0a025a

    const v4, 0x7f0a01c5

    const v5, 0x7f0a0149

    :try_start_0
    invoke-static {}, Lpubgm/loader/activity/MainActivity;->EXP()Ljava/lang/String;

    move-result-object v0

    .line 1701
    .local v0, "expiryDateStr":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1702
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-wide v7, -0x7d8a8c1d73e5L

    invoke-static {v7, v8}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1703
    .local v6, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    .line 1704
    .local v7, "expiryDate":Ljava/util/Date;
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 1707
    .local v8, "currentDate":Ljava/util/Date;
    iget-object v9, v1, Lpubgm/loader/activity/MainActivity$16;->this$0:Lpubgm/loader/activity/MainActivity;

    invoke-virtual {v9, v5}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1708
    .local v9, "daysText":Landroid/widget/TextView;
    iget-object v10, v1, Lpubgm/loader/activity/MainActivity$16;->this$0:Lpubgm/loader/activity/MainActivity;

    invoke-virtual {v10, v4}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1709
    .local v10, "hoursText":Landroid/widget/TextView;
    iget-object v11, v1, Lpubgm/loader/activity/MainActivity$16;->this$0:Lpubgm/loader/activity/MainActivity;

    invoke-virtual {v11, v3}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1710
    .local v11, "minutesText":Landroid/widget/TextView;
    iget-object v12, v1, Lpubgm/loader/activity/MainActivity$16;->this$0:Lpubgm/loader/activity/MainActivity;

    invoke-virtual {v12, v2}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1712
    .local v12, "secondsText":Landroid/widget/TextView;
    if-eqz v7, :cond_1

    .line 1714
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    sub-long/2addr v13, v15

    .line 1716
    .local v13, "diffInMillis":J
    const-wide/16 v15, 0x0

    cmp-long v15, v13, v15

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    if-lez v15, :cond_0

    .line 1718
    div-long v17, v13, v2

    const-wide/16 v19, 0x3c

    rem-long v17, v17, v19

    .line 1719
    .local v17, "diffSeconds":J
    const-wide/32 v21, 0xea60

    div-long v21, v13, v21

    rem-long v21, v21, v19

    move-wide/from16 v19, v21

    .line 1720
    .local v19, "diffMinutes":J
    const-wide/32 v21, 0x36ee80

    div-long v21, v13, v21

    const-wide/16 v23, 0x18

    rem-long v21, v21, v23

    .line 1721
    .local v21, "diffHours":J
    const-wide/32 v23, 0x5265c00

    div-long v23, v13, v23

    .line 1724
    .local v23, "diffDays":J
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    const-wide v25, -0x7dbe8c1d73e5L

    invoke-static/range {v25 .. v26}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    aput-object v27, v3, v4

    invoke-static {v15, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1725
    .local v3, "daysStr":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-wide v27, -0x7da18c1d73e5L

    invoke-static/range {v27 .. v28}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v15

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    const/16 v27, 0x0

    aput-object v28, v4, v27

    invoke-static {v5, v15, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1726
    .local v4, "hoursStr":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-wide v28, -0x7da48c1d73e5L

    invoke-static/range {v28 .. v29}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v28, v0

    .end local v0    # "expiryDateStr":Ljava/lang/String;
    .local v28, "expiryDateStr":Ljava/lang/String;
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    const/16 v27, 0x0

    aput-object v29, v0, v27

    invoke-static {v5, v15, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1727
    .local v0, "minutesStr":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-wide v29, -0x7daf8c1d73e5L

    invoke-static/range {v29 .. v30}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v15

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    const/16 v27, 0x0

    aput-object v29, v2, v27

    invoke-static {v5, v15, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1730
    .local v2, "secondsStr":Ljava/lang/String;
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1731
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1732
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1733
    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1734
    .end local v0    # "minutesStr":Ljava/lang/String;
    .end local v2    # "secondsStr":Ljava/lang/String;
    .end local v3    # "daysStr":Ljava/lang/String;
    .end local v4    # "hoursStr":Ljava/lang/String;
    .end local v17    # "diffSeconds":J
    .end local v19    # "diffMinutes":J
    .end local v21    # "diffHours":J
    .end local v23    # "diffDays":J
    goto :goto_0

    .line 1736
    .end local v28    # "expiryDateStr":Ljava/lang/String;
    .local v0, "expiryDateStr":Ljava/lang/String;
    :cond_0
    move-object/from16 v28, v0

    .end local v0    # "expiryDateStr":Ljava/lang/String;
    .restart local v28    # "expiryDateStr":Ljava/lang/String;
    const-wide v2, -0x7d528c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1737
    const-wide v2, -0x7d578c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1738
    const-wide v2, -0x7d548c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1739
    const-wide v2, -0x7d598c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1742
    iget-object v0, v1, Lpubgm/loader/activity/MainActivity$16;->this$0:Lpubgm/loader/activity/MainActivity;

    invoke-virtual {v0}, Lpubgm/loader/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-wide v2, -0x7d5e8c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1743
    iget-object v0, v1, Lpubgm/loader/activity/MainActivity$16;->this$0:Lpubgm/loader/activity/MainActivity;

    invoke-virtual {v0}, Lpubgm/loader/activity/MainActivity;->finish()V

    .line 1744
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 1748
    :goto_0
    iget-object v0, v1, Lpubgm/loader/activity/MainActivity$16;->val$handler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1749
    nop

    .end local v13    # "diffInMillis":J
    goto :goto_1

    .line 1751
    .end local v28    # "expiryDateStr":Ljava/lang/String;
    .restart local v0    # "expiryDateStr":Ljava/lang/String;
    :cond_1
    move-object/from16 v28, v0

    .end local v0    # "expiryDateStr":Ljava/lang/String;
    .restart local v28    # "expiryDateStr":Ljava/lang/String;
    const-wide v2, -0x7d788c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1752
    const-wide v2, -0x7d7d8c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1753
    const-wide v2, -0x7d628c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1754
    const-wide v2, -0x7d678c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1756
    .end local v6    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v7    # "expiryDate":Ljava/util/Date;
    .end local v8    # "currentDate":Ljava/util/Date;
    .end local v9    # "daysText":Landroid/widget/TextView;
    .end local v10    # "hoursText":Landroid/widget/TextView;
    .end local v11    # "minutesText":Landroid/widget/TextView;
    .end local v12    # "secondsText":Landroid/widget/TextView;
    :goto_1
    goto :goto_2

    .line 1701
    .end local v28    # "expiryDateStr":Ljava/lang/String;
    .restart local v0    # "expiryDateStr":Ljava/lang/String;
    :cond_2
    move-object/from16 v28, v0

    .line 1758
    .end local v0    # "expiryDateStr":Ljava/lang/String;
    .restart local v28    # "expiryDateStr":Ljava/lang/String;
    iget-object v0, v1, Lpubgm/loader/activity/MainActivity$16;->this$0:Lpubgm/loader/activity/MainActivity;

    const v2, 0x7f0a0149

    invoke-virtual {v0, v2}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1759
    .local v0, "daysText":Landroid/widget/TextView;
    iget-object v2, v1, Lpubgm/loader/activity/MainActivity$16;->this$0:Lpubgm/loader/activity/MainActivity;

    const v3, 0x7f0a01c5

    invoke-virtual {v2, v3}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1760
    .local v2, "hoursText":Landroid/widget/TextView;
    iget-object v3, v1, Lpubgm/loader/activity/MainActivity$16;->this$0:Lpubgm/loader/activity/MainActivity;

    const v4, 0x7f0a025a

    invoke-virtual {v3, v4}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1761
    .local v3, "minutesText":Landroid/widget/TextView;
    iget-object v4, v1, Lpubgm/loader/activity/MainActivity$16;->this$0:Lpubgm/loader/activity/MainActivity;

    const v5, 0x7f0a0314

    invoke-virtual {v4, v5}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1763
    .local v4, "secondsText":Landroid/widget/TextView;
    const-wide v5, -0x7d648c1d73e5L

    invoke-static {v5, v6}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1764
    const-wide v5, -0x7d698c1d73e5L

    invoke-static {v5, v6}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1765
    const-wide v5, -0x7d6e8c1d73e5L

    invoke-static {v5, v6}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1766
    const-wide v5, -0x7d138c1d73e5L

    invoke-static {v5, v6}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1780
    .end local v0    # "daysText":Landroid/widget/TextView;
    .end local v2    # "hoursText":Landroid/widget/TextView;
    .end local v3    # "minutesText":Landroid/widget/TextView;
    .end local v4    # "secondsText":Landroid/widget/TextView;
    .end local v28    # "expiryDateStr":Ljava/lang/String;
    :goto_2
    goto :goto_3

    .line 1768
    :catch_0
    move-exception v0

    .line 1769
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1771
    iget-object v2, v1, Lpubgm/loader/activity/MainActivity$16;->this$0:Lpubgm/loader/activity/MainActivity;

    const v3, 0x7f0a0149

    invoke-virtual {v2, v3}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1772
    .local v2, "daysText":Landroid/widget/TextView;
    iget-object v3, v1, Lpubgm/loader/activity/MainActivity$16;->this$0:Lpubgm/loader/activity/MainActivity;

    const v4, 0x7f0a01c5

    invoke-virtual {v3, v4}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1773
    .local v3, "hoursText":Landroid/widget/TextView;
    iget-object v4, v1, Lpubgm/loader/activity/MainActivity$16;->this$0:Lpubgm/loader/activity/MainActivity;

    const v5, 0x7f0a025a

    invoke-virtual {v4, v5}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1774
    .local v4, "minutesText":Landroid/widget/TextView;
    iget-object v5, v1, Lpubgm/loader/activity/MainActivity$16;->this$0:Lpubgm/loader/activity/MainActivity;

    const v6, 0x7f0a0314

    invoke-virtual {v5, v6}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1776
    .local v5, "secondsText":Landroid/widget/TextView;
    const-wide v6, -0x7d108c1d73e5L

    invoke-static {v6, v7}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1777
    const-wide v6, -0x7d158c1d73e5L

    invoke-static {v6, v7}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1778
    const-wide v6, -0x7d1a8c1d73e5L

    invoke-static {v6, v7}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1779
    const-wide v6, -0x7d1f8c1d73e5L

    invoke-static {v6, v7}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1781
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "daysText":Landroid/widget/TextView;
    .end local v3    # "hoursText":Landroid/widget/TextView;
    .end local v4    # "minutesText":Landroid/widget/TextView;
    .end local v5    # "secondsText":Landroid/widget/TextView;
    :goto_3
    return-void
.end method
