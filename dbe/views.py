from django.shortcuts import render
from .models import DBECal, AlkView
from django.http import HttpResponse
def calview(request):
    if request.method == "POST":
        a = request.POST.get("cmpnd")
        C = 0
        H = 0
        N = 0
        O = 0
        X = 0
        for i in range(0,len(a)):
            if a[i] =="C" or a[i]=="c":
                if len(a)>1:
                    if i+1 <= len(a)-1 and i+2 <= len(a)-1:
                        if a[i+1].isdigit() and a[i+2].isalpha():
                            C+=int(a[i+1])
                        elif a[i+1].isalpha():
                            C+=1
                        elif a[i+1].isdigit() and a[i+2].isdigit():
                            C += int(a[i+1]+a[i+2])
                    elif i+1 <= len(a)-1 :
                        if a[i+1].isdigit():
                            C+= int(a[i+1])
                        else:
                            H+=1
                elif len(a)== 1:
                        C+=1
            if a[i] == "H" or a[i] == "h":
                if i+1 <= len(a)-1 and i+2 <= len(a)-1:
                    if a[i+1].isdigit() and a[i+2].isalpha():
                        H+=int(a[i+1])
                    elif a[i+1].isalpha():
                        H+=1
                    elif a[i+1].isdigit() and a[i+2].isdigit():
                        H += int(a[i+1]+a[i+2])
                elif i+1 <= len(a)-1 :
                    if a[i+1].isdigit():
                        H+= int(a[i+1])
                    else:
                        H+=1
                else:
                    H+=1
            if a[i] == "N" or a[i] == "n":
                if i+1 <= len(a)-1 and i+2 <= len(a)-1:
                    if a[i+1].isdigit() and a[i+2].isalpha():
                        N += int(a[i+1])
                    elif a[i+1].isdigit() and a[i+2].isdigit():
                        N += int(a[i+1]+a[i+2])
                    else:
                        N+=1
                elif i+1 <= len(a)-1 :
                    if a[i+1].isdigit():
                        N+= int(a[i+1])
                    else:
                        N+=1
                else:
                    N+=1
            if a[i] in ["C","B"] or a[i] in ["c","b"]:
                if len(a)>1:
                    if a[i+1] in ["l","r"]:
                        if i+2 <= len(a)-1 and i+3 <= len(a)-1:
                            if a[i+2].isdigit() and a[i+3].isalpha():
                                X += int(a[i+2])
                            elif a[i+2].isdigit() and a[i+3].isdigit():
                                X += int(a[i+2]+a[i+3])
                            else:
                                X += 1
                        elif i+2 <= len(a)-1:
                            if a[i+2].isdigit():
                                X += int(a[i+2])
                            else:
                                X+=1
                else:
                    pass
            if a[i] in ["F","I"] or a[i] in ["f","i"]:
                if i+1 <= len(a)-1 and i+2 <= len(a)-1:
                    if a[i+1].isdigit():
                        X += int(a[i+1])
                    elif a[i+1].isdigit() and a[i+2].isdigit():
                        X += int(a[i+1]+a[i+2])
                    else:
                        X += 1
                elif i+1 <= len(a)-1 :
                    if a[i+1].isdigit():
                        X += int(a[i+1])
                    else:
                        X += 1
                else:
                    X+=1
        DBE = C + 1 +((N- (H + X))/2)
        if DBE == 0:
            q = DBECal.objects.raw('SELECT * FROM dbe_dbecal WHERE Dbe = 0')
            context = {"dbe": q}
            return render(request, "dbe.html", context)
        if DBE == 1:
            q = DBECal.objects.raw('SELECT * FROM dbe_dbecal WHERE Dbe = 1')
            context = {"dbe": q}
            return render(request, "dbe.html", context)
        if DBE == 2:
            q = DBECal.objects.raw('SELECT * FROM dbe_dbecal WHERE Dbe = 2')
            context = {"dbe": q}
            return render(request, "dbe.html", context)
        if DBE == 3:
            q = DBECal.objects.raw('SELECT * FROM dbe_dbecal WHERE Dbe = 3')
            context = {"dbe": q}
            return render(request, "dbe.html", context)
        if DBE == 4:
            q = DBECal.objects.raw('SELECT * FROM dbe_dbecal WHERE Dbe = 4')
            context = {"dbe": q}
            return render(request, "dbe.html", context)
        if DBE < 0:
            q = DBECal.objects.raw('SELECT * FROM dbe_dbecal WHERE Dbe = -1')
            context = {"dbe": q}
            return render(request, "dbe.html", context)
        if DBE > 4:
            q = DBECal.objects.raw('SELECT * FROM dbe_dbecal WHERE Dbe = 5')
            context = {"dbe": q}
            return render(request, "dbe.html", context)
def isoview(request):
    if request.method == "POST":
        a = request.POST.get("cmpd")
        C = 0
        H = 0
        N = 0
        O = 0
        X = 0
        for i in range(0,len(a)):
            if a[i] =="C" or a[i]=="c":
                if len(a)>1:
                    if i+1 <= len(a)-1 and i+2 <= len(a)-1:
                        if a[i+1].isdigit() and a[i+2].isalpha():
                            C+=int(a[i+1])
                        elif a[i+1].isalpha():
                            C+=1
                        elif a[i+1].isdigit() and a[i+2].isdigit():
                            C += int(a[i+1]+a[i+2])
                    elif i+1 <= len(a)-1 :
                        if a[i+1].isdigit():
                            C+= int(a[i+1])
                        else:
                            H+=1
                elif len(a)== 1:
                        C+=1
            if a[i] == "H" or a[i] == "h":
                if i+1 <= len(a)-1 and i+2 <= len(a)-1:
                    if a[i+1].isdigit() and a[i+2].isalpha():
                        H+=int(a[i+1])
                    elif a[i+1].isalpha():
                        H+=1
                    elif a[i+1].isdigit() and a[i+2].isdigit():
                        H += int(a[i+1]+a[i+2])
                elif i+1 <= len(a)-1 :
                    if a[i+1].isdigit():
                        H+= int(a[i+1])
                    else:
                        H+=1
                else:
                    H+=1
            if a[i] == "N" or a[i] == "n":
                if i+1 <= len(a)-1 and i+2 <= len(a)-1:
                    if a[i+1].isdigit() and a[i+2].isalpha():
                        N += int(a[i+1])
                    elif a[i+1].isdigit() and a[i+2].isdigit():
                        N += int(a[i+1]+a[i+2])
                    else:
                        N+=1
                elif i+1 <= len(a)-1 :
                    if a[i+1].isdigit():
                        N+= int(a[i+1])
                    else:
                        N+=1
                else:
                    N+=1
            if a[i] in ["C","B"] or a[i] in ["c","b"]:
                if len(a)>1:
                    if a[i+1] in ["l","r"]:
                        if i+2 <= len(a)-1 and i+3 <= len(a)-1:
                            if a[i+2].isdigit() and a[i+3].isalpha():
                                X += int(a[i+2])
                            elif a[i+2].isdigit() and a[i+3].isdigit():
                                X += int(a[i+2]+a[i+3])
                            else:
                                X += 1
                        elif i+2 <= len(a)-1:
                            if a[i+2].isdigit():
                                X += int(a[i+2])
                            else:
                                X+=1
                else:
                    pass
            if a[i] in ["F","I"] or a[i] in ["f","i"]:
                if i+1 <= len(a)-1 and i+2 <= len(a)-1:
                    if a[i+1].isdigit():
                        X += int(a[i+1])
                    elif a[i+1].isdigit() and a[i+2].isdigit():
                        X += int(a[i+1]+a[i+2])
                    else:
                        X += 1
                elif i+1 <= len(a)-1 :
                    if a[i+1].isdigit():
                        X += int(a[i+1])
                    else:
                        X += 1
                else:
                    X+=1
        if C == 1 and H == 4:
            z = AlkView.objects.raw('SELECT * FROM dbe_alkview WHERE Srno = 1 ')
            context = {"alk": z}
            return render(request, "alkane.html", context)
        if C == 2 and H == 6:
            z = AlkView.objects.raw('SELECT * FROM dbe_alkview WHERE Srno = 2 ')
            context = {"alk": z}
            return render(request, "alkane.html", context)
        if C == 3 and H == 8:
            z = AlkView.objects.raw('SELECT * FROM dbe_alkview WHERE Srno = 3 ')
            context = {"alk": z}
            return render(request, "alkane.html", context)
        if C == 4 and H == 10:
            z = AlkView.objects.raw('SELECT * FROM dbe_alkview WHERE Srno = 4 ')
            context = {"alk": z}
            return render(request, "alkane.html", context)
        if C == 5 and H == 12:
            z = AlkView.objects.raw('SELECT * FROM dbe_alkview WHERE Srno = 5 ')
            context = {"alk": z}
            return render(request, "alkane.html", context)
        if C == 6 and H == 14:
            z = AlkView.objects.raw('SELECT * FROM dbe_alkview WHERE Srno = 6 ')
            context = {"alk": z}
            return render(request, "alkane.html", context)
        if C == 7 and H == 16:
            z = AlkView.objects.raw('SELECT * FROM dbe_alkview WHERE Srno = 7 ')
            context = {"alk": z}
            return render(request, "alkane.html", context)
        if C == 8 and H == 18:
            z = AlkView.objects.raw('SELECT * FROM dbe_alkview WHERE Srno = 8 ')
            context = {"alk": z}
            return render(request, "alkane.html", context)
        if C == 9 and H == 20:
            z = AlkView.objects.raw('SELECT * FROM dbe_alkview WHERE Srno = 9 ')
            context = {"alk": z}
            return render(request, "alkane.html", context)
        if C == 10 and H == 22:
            z = AlkView.objects.raw('SELECT * FROM dbe_alkview WHERE Srno = 10 ')
            context = {"alk": z}
            return render(request, "alkane.html", context)
        if C == 11 and H == 24:
            z = AlkView.objects.raw('SELECT * FROM dbe_alkview WHERE Srno = 11 ')
            context = {"alk": z}
            return render(request, "alkane.html", context)
        if C == 12 and H == 26:
            z = AlkView.objects.raw('SELECT * FROM dbe_alkview WHERE Srno = 12 ')
            context = {"alk": z}
            return render(request, "alkane.html", context)
        if C == 13 and H == 28:
            z = AlkView.objects.raw('SELECT * FROM dbe_alkview WHERE Srno = 13 ')
            context = {"alk": z}
            return render(request, "alkane.html", context)
        if C == 14 and H == 30:
            z = AlkView.objects.raw('SELECT * FROM dbe_alkview WHERE Srno = 14 ')
            context = {"alk": z}
            return render(request, "alkane.html", context)
        else:
            z = AlkView.objects.raw('SELECT * FROM dbe_alkview WHERE Srno = 15 ')
            context = {"alk": z}
            return render(request, "alkane.html", context)
        
        
